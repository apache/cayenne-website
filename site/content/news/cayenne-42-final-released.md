+++
title = "Cayenne 4.2 Final Released"
date = 2023-05-25 18:00:00+03:00
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



Apache Cayenne team is really glad to announce a final (general availability) release of _Cayenne 4.2_. A brief overview of changes since 4.1 includes:

- Runtime
  - Callback annotations on entity classes
  - Customizable SQL generator API
  - Nested queries
  - Ordering on aggregate functions
  - Property API made type-specific
  - Custom functions and operators in queries
  - New attributes types: JSON, geospatial

- Modeler
  - Acquire JDBC drivers from Maven Central
  - Improvements to attribute and relationships mapping
  - Lots of bug fixes in DB Import, etc.

- Deprecations (to be removed in 5.0)
  - ROP-related modules
  - cayenne-web
  - Clustering transports (cayenne-xmpp, etc.)

Full release notes can be read [here](https://github.com/apache/cayenne/blob/STABLE-4.2/RELEASE-NOTES.txt).

Cayenne Framework and Modeler can be downloaded [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>

### **Updates since the last release candidate (4.2.RC2)**

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features

- [CAY-2802](https://issues.apache.org/jira/browse/CAY-2802) Upgrade Gradle to 7.6.1
- [CAY-2805](https://issues.apache.org/jira/browse/CAY-2805) Stop calling exp parser internally

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes

- [CAY-2552](https://issues.apache.org/jira/browse/CAY-2552) ColumnQuery with flattened attributes bug
- [CAY-2783](https://issues.apache.org/jira/browse/CAY-2783) DbEntity to ObjEntity synchronization should check mandatory flag for primitive java types
- [CAY-2789](https://issues.apache.org/jira/browse/CAY-2789) MalformedJsonException thrown when reading manually edited JSON data in Postgres
- [CAY-2790](https://issues.apache.org/jira/browse/CAY-2790) EOModel import: NPE importing EOFetchSpecification
- [CAY-2792](https://issues.apache.org/jira/browse/CAY-2792) Fix Insertion Order For Reflexive DataObjects
- [CAY-2794](https://issues.apache.org/jira/browse/CAY-2794) Fix Incorrect JavaType for Vertical-Inheritance Attributes
- [CAY-2796](https://issues.apache.org/jira/browse/CAY-2796) Cayenne custom json formatter produces invalid json
- [CAY-2800](https://issues.apache.org/jira/browse/CAY-2800) Modeler saves map.xml files with schema ordering error
- [CAY-2801](https://issues.apache.org/jira/browse/CAY-2801) Incorrect equals() implementation in IdGenerationMarker could cause data missing in the commit
