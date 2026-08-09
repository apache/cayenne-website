+++
title = "Building Cayenne"
weight = 50
+++
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements. See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to you under the Apache License, Version
  2.0 (the "License"); you may not use this file except in compliance
  with the License. You may obtain a copy of the License at
 
  https://www.apache.org/licenses/LICENSE-2.0 Unless required by
  applicable law or agreed to in writing, software distributed under the
  License is distributed on an AS IS BASIS, WITHOUT WARRANTIES OR
  CONDITIONS OF ANY KIND, either express or implied. See the License for
  the specific language governing permissions and limitations under the
  License.
-->



## Prerequisites

* Make sure [Maven](https://maven.apache.org/) is installed.
* [Get the source code](/dev/code-repository/).

<div class="gap" style="margin-bottom: 3rem;"></div>

## Recommended Maven Settings

Here are the MAVEN_OPTS that should be used for the build. MAVEN_OPTS variable can either be exported in a shell, 
or placed in *$HOME/.mavenrc*. Optimal values vary from platform to platform and between Cayenne versions, 
but these should probably work for everyone:

    MAVEN_OPTS="-Djava.net.preferIPv4Stack=true -Xms512m"

<div class="gap" style="margin-bottom: 3rem;"></div>

## Building with Maven

Depending on what you want to do, there are various flavors of the builds
discussed below. All builds should be executed from the root folder of the source checkout.

The most common flavor is building Cayenne and executing unit and integration tests :

    mvn clean verify

For the build to produce a release-like assembly, activate "assembly"
profile. Additionally activate a profile specific for the target platform
of a given assembly (otherwise assembly profile won't produce anything). 

Source assembly: 

    mvn clean verify -Passembly,src

Cross-platform assembly:

    mvn clean verify -Passembly,generic

Windows assembly:

    mvn clean verify -Passembly,windows

Mac OS X assembly:

    mvn clean verify -Passembly,mac

Multiple assemblies built at once:

    mvn clean verify -Passembly,src,generic,mac
