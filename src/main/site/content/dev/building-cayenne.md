---
title: Building Cayenne
weight: 50
url: /dev/building-cayenne.html
---

## Prerequisites

* Make sure [Maven](http://maven.apache.org/) is installed.
* [Get the source code](/dev/code-repository.html).

{{% gap %}}

## Recommended Maven Settings

Here are the MAVEN_OPTS that should be used for the build. MAVEN_OPTS variable can either be exported in a shell, 
or placed in *$HOME/.mavenrc*. Optimal values vary from platform to platform and between Cayenne versions, 
but these should probably work for everyone:

    MAVEN_OPTS="-Djava.net.preferIPv4Stack=true -Xms512m"

{{% gap %}}

## Building with Maven

Depending on what you want to do, there are various flavors of the builds
discussed below. All builds should be executed from the root folder of the source checkout.

Building the framework and installing it to the local repository (the most
common flavor) :

    mvn clean install
    
In order to skip the unit tests (to speed up the build process or because
some tests are failing), add *"-DskipTests"* to any build
flavor:

    mvn clean install -DskipTests

For the build to produce a release-like assembly, activate "assembly"
profile. Additionally activate a profile specific for the target platform
of a given assembly (otherwise assembly profile won't produce anything). 

Source assembly: 

    mvn clean install -Passembly,src

Cross-platform assembly:

    mvn clean install -Passembly,generic

Windows assembly:

    mvn clean install -Passembly,windows

Mac OS X assembly:

    mvn clean install -Passembly,mac

Multiple assemblies built at once:

    mvn clean install -Passembly,src,generic,mac