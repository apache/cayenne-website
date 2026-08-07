+++
title = "Cayenne 4.2 Beta 1 Released"
date = 2021-12-06 15:00:00+03:00
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

 

Apache Cayenne team is glad to announce the first beta release of Cayenne 4.2.
The API is frozen now, and it is safe to try it out. From now on the 4.2 branch will concentrate on bug fixes.

Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features:

- [CAY-2399](https://issues.apache.org/jira/browse/CAY-2399) Convert string values to Enum in qualifiers
- [CAY-2637](https://issues.apache.org/jira/browse/CAY-2637) Allow forcing a custom Connection for a transaction
- [CAY-2718](https://issues.apache.org/jira/browse/CAY-2718) Use testcontainers for the integration tests

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2092](https://issues.apache.org/jira/browse/CAY-2092) Exception for query that uses pagination and sorting on to-many
- [CAY-2694](https://issues.apache.org/jira/browse/CAY-2694) Precision issues with reverse / forward engineering of time types on MySQL
- [CAY-2699](https://issues.apache.org/jira/browse/CAY-2699) Modeler: dbimport schema view not working on SQLite
- [CAY-2702](https://issues.apache.org/jira/browse/CAY-2702) Modeler: Callbacks table has too small default width
- [CAY-2703](https://issues.apache.org/jira/browse/CAY-2703) Modeler: incorrect active tab style on the MacOS version
- [CAY-2704](https://issues.apache.org/jira/browse/CAY-2704) Vertical inheritance with Embeddedables looses ObjAttribute information
- [CAY-2705](https://issues.apache.org/jira/browse/CAY-2705) Performance of callback annotation processing
- [CAY-2706](https://issues.apache.org/jira/browse/CAY-2706) Modeler: object attribute dialog doesn't properly initialized for the embeddable type
- [CAY-2707](https://issues.apache.org/jira/browse/CAY-2707) Modeler: code generation is broken in the DataDomain tab
- [CAY-2708](https://issues.apache.org/jira/browse/CAY-2708) Gradle build plugin fails on Java 16
- [CAY-2709](https://issues.apache.org/jira/browse/CAY-2709) Modeler: Cgen fails to generate code for a new unsaved project with all settings set to default
- [CAY-2710](https://issues.apache.org/jira/browse/CAY-2710) Modeler: modeler throws IllegalArgumentsException when root and rel paths have different root
- [CAY-2712](https://issues.apache.org/jira/browse/CAY-2712) Shouldn't run batch inserts with generated keys if there is reflexive dependency
- [CAY-2713](https://issues.apache.org/jira/browse/CAY-2713) ConcurrentModificationException when Inserting
- [CAY-2714](https://issues.apache.org/jira/browse/CAY-2714) Offset value is not copied to column select metadata
- [CAY-2716](https://issues.apache.org/jira/browse/CAY-2716) Wrong operator for the bitwise NOT
- [CAY-2720](https://issues.apache.org/jira/browse/CAY-2720) ConcurrentModificationException in the TypeAwareSQLTreeProcessor
- [CAY-2721](https://issues.apache.org/jira/browse/CAY-2721) Platform builds of CayenneModeler don't work with Java 17
- [CAY-2723](https://issues.apache.org/jira/browse/CAY-2723) Phantom update of a to-dependent-pk relationship
