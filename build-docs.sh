#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

#
# This shell script can be used to add or update cayenne documentation.
# It can update HTML guides and JavaDoc for one version at a time.
# Should be used from default project location.
# For safety reason changes should be committed manually.
#
#  Usage:
#  > build-docs.sh [--no-javadoc] git-tag [cayenne-version]
#
#  Options:
#       --no-javadoc: build the Asciidoc guides only and leave the API docs alone.
#                     "build-asciidocs.sh" is a shortcut for this mode.
#       git-tag: tag that will be used to build documentation
#       cayenne-version: optional parameter, cayenne version for which docs are build.
#                        If not set git-tag will be used as version.
#
#  Example:
#       Build docs for release 4.1.M1:
#       > build-docs.sh 4.1.M1
#
#       Build docs for old 3.1.1 release:
#       > build-docs.sh cayenne-parent-3.1.1 3.1.1
#
#  Requires "mvn", "git" and "rsync". Cayenne 5.0 needs Maven 3.8.5 or newer
#  ("asciidoctor-maven-plugin" won't run on anything older) and a JDK 21+.
#

set -o pipefail

# Modules whose API is published on the site: the DI container, the core, and the user facing
# extensions. Internal and tooling modules (cayenne-ant, -cgen, -dbsync, -maven-plugin,
# -mcp-server, -modeler, -project, -wocompat, ...) are deliberately left out. New extension
# modules have to be added here by hand - an allow list is used on purpose, so that a new
# internal module can't silently leak into the published API.
JAVADOC_MODULES="cayenne-di,cayenne,cayenne-cache-invalidation,cayenne-crypto,cayenne-jcache,cayenne-lifecycle,cayenne-velocity,cayenne-osgi"

# "cayenne-test-utilities" is dragged into the reactor by "-am", but is not public API.
JAVADOC_EXCLUDES="org.apache.cayenne.test.*"

# Not a declared dependency of anything, but "maven-remote-resources-plugin" resolves it as an
# artifact, so the build fails unless it is part of the reactor.
LEGAL_MODULE="build-tools/cayenne-legal"

function checkAndCreateDir() {
    if [ ! -d "$1" ]; then
        echo "Creating doc dir: $1"
        mkdir -p "$1"
    fi
}

function clearDir() {
    if [ -d "$1" ]; then
        echo "Clearing dir: $1"
        rm -rf "${1:?}/"
    fi
}

BUILD_JAVADOC=true
if [ "$1" == "--no-javadoc" ]; then
    BUILD_JAVADOC=false
    shift
fi

# no input, so just exit
if [ -z "$1" ]; then
    echo "Usage: build-docs.sh [--no-javadoc] git-tag [cayenne-version]"
    exit 1
fi

GIT_TAG="$1"
VERSION="$GIT_TAG"

# version can be passed as a second parameter
if [ -z "$2" ]; then
    echo "Using git-tag \"$GIT_TAG\" as cayenne version"
else
    VERSION="$2"
    echo "Using git-tag \"$GIT_TAG\" and cayenne version $VERSION"
fi

# change dir to one with this script
cd "$( dirname "${BASH_SOURCE[0]}" )" || exit 2
BASE_DIR=$(pwd) # base project dir
echo "Working dir: $BASE_DIR"

# init and check paths
MAJOR_VERSION=$(echo "$VERSION" | grep -oE '^[0-9]+\.[0-9]+')
if [ -z "$MAJOR_VERSION" ]; then
    echo "*** Can't derive a X.Y version from \"$VERSION\", pass it as the second argument" 1>&2
    exit 1
fi
MAJOR_NUM="${MAJOR_VERSION%%.*}"

JAVA_DOC_DIR="$BASE_DIR/src/main/site/static/docs/$MAJOR_VERSION"       # JavaDoc goes to static, no template wrapping
ASCII_DOC_DIR="$BASE_DIR/src/main/site/content/docs/$MAJOR_VERSION"     # Asciidoc goes to content, Hugo will process it
CAYENNE_TMP_DIR="$BASE_DIR/target/cayenne-tmp"                          # tmp directory to checkout Cayenne
MVN_LOG="$BASE_DIR/target/build-docs-maven.log"

# prepare all directories
clearDir          "$CAYENNE_TMP_DIR"
checkAndCreateDir "$ASCII_DOC_DIR"
if [ "$BUILD_JAVADOC" == "true" ]; then
    checkAndCreateDir "$JAVA_DOC_DIR"
fi

echo "Building docs for Cayenne $MAJOR_VERSION ($VERSION)"

# clone git repo and checkout requested TAG
if ! git clone https://github.com/apache/cayenne.git "$CAYENNE_TMP_DIR" --branch "$GIT_TAG" --depth 1; then
    echo "*** Unable to clone Cayenne at \"$GIT_TAG\"" 1>&2
    exit 3
fi
cd "$CAYENNE_TMP_DIR" || exit 3

# Cayenne 5.0 moved the guides from "docs/asciidoc" to "docs", and dropped the "docs/doc" module
# that used to aggregate the JavaDoc. Detect the layout rather than assume one, as this script is
# also used to rebuild the docs of older branches.
if [ -d "docs/asciidoc" ]; then
    DOCS_DIR="docs/asciidoc"
else
    DOCS_DIR="docs"
fi
echo "Guides are in \"$DOCS_DIR\""

# collect the guide modules, so that the rest of the (much heavier) reactor is not built
GUIDE_MODULES=""
for d in "$DOCS_DIR"/*/ ; do
    module=$(basename "$d")
    if [ "$module" == "cayenne-asciidoc-extension" ] || [ "$module" == "doc" ] || [ ! -f "$d/pom.xml" ]; then
        continue
    fi
    GUIDE_MODULES="${GUIDE_MODULES:+$GUIDE_MODULES,}$DOCS_DIR/$module"
done
if [ -z "$GUIDE_MODULES" ]; then
    echo "*** No guide modules found in \"$DOCS_DIR\"" 1>&2
    exit 4
fi

# The guides and the JavaDoc are built by two separate Maven runs, on purpose: the guide modules
# carry sample sources (org.apache.cayenne.tutorial.*), and anything sitting in the same reactor
# ends up in "javadoc:aggregate" output.
function runMaven() {
    local description="$1"
    shift

    echo "Running Maven build ($description)... it can take a while... (log: $MVN_LOG)"
    if ! mvn -B -DskipTests \
            "-Dcayenne.version=$VERSION" "-Dcayenne.major.version=$MAJOR_VERSION" \
            "$@" >> "$MVN_LOG" 2>&1; then
        echo "*** Maven build failed ($description), see $MVN_LOG" 1>&2
        tail -20 "$MVN_LOG" 1>&2
        exit 5
    fi
    echo "Maven build complete ($description)"
}

rm -f "$MVN_LOG"

runMaven "guides" package -pl "$LEGAL_MODULE,$GUIDE_MODULES" -am

if [ "$BUILD_JAVADOC" == "true" ]; then
    if [ -d "docs/doc" ]; then
        # pre-5.0 layout: a dedicated module aggregates the JavaDoc, and only under "assembly"
        runMaven "javadoc" package -Passembly -pl "$LEGAL_MODULE,docs/doc" -am
    else
        # 5.0 and later: aggregate straight from the published modules. "cayenne-test-utilities"
        # is excluded as it is dragged in by "-am" without being public API.
        runMaven "javadoc" package javadoc:aggregate \
            -Dmaven.javadoc.failOnError=false \
            "-DexcludePackageNames=$JAVADOC_EXCLUDES" \
            "-Ddoctitle=Apache Cayenne $VERSION API" \
            "-Dwindowtitle=Apache Cayenne $VERSION API" \
            -pl ":cayenne-parent,$LEGAL_MODULE,$JAVADOC_MODULES" -am
    fi
fi

# copy everything from the "$DOCS_DIR/**/target/site/**" directories
cd "$CAYENNE_TMP_DIR/$DOCS_DIR" || exit 7
for d in */ ; do
    module=$(basename "$d")
    if [ ! -d "$module/target/site" ]; then
        continue
    fi

    echo "Syncing asciidoc content for ${module}"
    # drop the previous output of this guide only. The version directory can also hold hand
    # written content, e.g. the "_index.md" of 3.1, 4.0 and 4.1, so it must not be wiped whole.
    rm -rf "${ASCII_DOC_DIR:?}/$module" "${ASCII_DOC_DIR:?}/$module.html" "${ASCII_DOC_DIR:?}/$module.toc.html"
    cp -R "./$module/target/site/." "$ASCII_DOC_DIR/"
done

# copy JavaDoc. Done last, so that a JavaDoc problem doesn't cost the guides sync above
if [ "$BUILD_JAVADOC" == "true" ]; then
    if [ -d "$CAYENNE_TMP_DIR/docs/doc" ]; then
        if [ "$MAJOR_NUM" -ge 5 ]; then
            APIDOC_SRC="$CAYENNE_TMP_DIR/docs/doc/target/site/apidocs"
        else
            APIDOC_SRC="$CAYENNE_TMP_DIR/docs/doc/target/site/apidocs/doc/api"
        fi
    else
        APIDOC_SRC="$CAYENNE_TMP_DIR/target/apidocs"
    fi

    if [ ! -f "$APIDOC_SRC/element-list" ] && [ ! -f "$APIDOC_SRC/package-list" ]; then
        echo "*** No JavaDoc generated at \"$APIDOC_SRC\", see $MVN_LOG" 1>&2
        exit 6
    fi

    echo "Syncing JavaDoc to \"docs/$MAJOR_VERSION/api/\""
    rsync -a --delete "$APIDOC_SRC/" "$JAVA_DOC_DIR/api/"
fi

# Commit changes, disabled for now
# cd "$BASE_DIR"
# git add -A && git commit -m "[build-docs] Update documentation for Cayenne $MAJOR_VERSION"
