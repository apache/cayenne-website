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
# This shell script can be used to fast add or update cayenne Asciidoc documentation.
# For safety reason changes should be committed manually.
#
#  Usage:
#  > build-asciidocs.sh git-tag cayenne-version
#
#  Options:
#       git-tag: tag that will be used to build documentation
#       cayenne-version: optional parameter, cayenne version for which docs are build.
#                        If not set git-tag will be used as version.
#
#  Example:
#       Build docs for release 4.1.M1:
#       > build-asciidocs.sh 4.1
#
#       Build docs for old 3.1.1 release:
#       > build-asciidocs.sh cayenne-parent-3.1.1 3.1
#
#       Build docs for master:
#       > build-asciidocs.sh master 4.1
#

function checkAndCreateDir() {
    if [ ! -d "$1" ]; then
        echo "Creating doc dir: $1"
        mkdir "$1"
    fi
}

function clearDir() {
    if [ -d "$1" ]; then
        echo "Clearing dir: $1"
        rm -rf "$1/"
    fi
}

# no input, so just exit
if [ -z "$1" ]; then
    echo "Usage: build-asciidocs.sh git-tag [cayenne-version]"
    exit -1
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
cd "$( dirname "${BASH_SOURCE[0]}" )"
BASE_DIR=`pwd` # base project dir
echo "Working dir: $BASE_DIR"

# init and check paths
MAJOR_VERSION="${VERSION:0:3}" # expecting version format as X.Y.something-else, i.e. 4.1.M1 is ok, but 4.12.M1 will fail..
ASCII_DOC_DIR="$BASE_DIR/src/main/site/content/docs/$MAJOR_VERSION"     # Asciidoc goes to content, Hugo will process it
CAYENNE_TMP_DIR="$BASE_DIR/target/cayenne-tmp"                          # tmp directory to checkout Cayenne

# prepare all directories
clearDir          "$CAYENNE_TMP_DIR"
checkAndCreateDir "$ASCII_DOC_DIR"

echo "Building docs for Cayenne $MAJOR_VERSION ($VERSION)"

# clone git repo and checkout requested TAG
git clone https://github.com/apache/cayenne.git "$CAYENNE_TMP_DIR" --branch "$GIT_TAG" --depth 1
# we will need Maven to build only asciidoc modules
cd  "$CAYENNE_TMP_DIR/docs/asciidoc/"

# build it
echo "Running Maven build... it can take a while..."
mvn install -Passembly -DskipTests -Dcayenne.version=${VERSION} > /dev/null 2>&1
echo "Maven build complete"

# copy everything from ./docs/asciidoc/**/target/site/** directories
for d in */ ; do
    # skip asciidoc extension module
    if [ "$d" == "cayenne-asciidoc-extension/" ]; then
        continue
    fi

    echo "Syncing asciidoc content for ${d}"
    cp -R "./${d}target/site/." "$ASCII_DOC_DIR/"
done
