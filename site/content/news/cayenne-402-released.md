+++
title = "Cayenne 4.0.2 Released"
date = 2019-10-14 12:00:00+03:00
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

 
This is a maintenance release with some minor changes in Modeler and a few bug fixes.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* [CAY-2519](https://issues.apache.org/jira/browse/CAY-2519) Use NoopEventManager if SERVER_CONTEXTS_SYNC_PROPERTY is false
* [CAY-2570](https://issues.apache.org/jira/browse/CAY-2570) Use MySQL adapter for latest versions of MariaDB

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2417](https://issues.apache.org/jira/browse/CAY-2417) Modeler: wrong title in attribute context menu
* [CAY-2550](https://issues.apache.org/jira/browse/CAY-2550) Modeler: ObjAttribute inspector modifies wrong columns in attribute table
* [CAY-2553](https://issues.apache.org/jira/browse/CAY-2553) Wrong disjoint prefetch query qualifier
* [CAY-2559](https://issues.apache.org/jira/browse/CAY-2559) Modeler: Warning dialog shows wrong information after changing target entity in dbRelationship
* [CAY-2573](https://issues.apache.org/jira/browse/CAY-2573) DI field injection is triggered when creating sql Driver
* [CAY-2582](https://issues.apache.org/jira/browse/CAY-2582) Double insert of manyToMany relationship mapped to Set
* [CAY-2584](https://issues.apache.org/jira/browse/CAY-2584) Crypto: can't use ColumnSelect with encrypted columns
* [CAY-2586](https://issues.apache.org/jira/browse/CAY-2586) Char can't be materialized to EnumType in some cases
* [CAY-2616](https://issues.apache.org/jira/browse/CAY-2616) Modeler: Wrong handling of path with spaces
* [CAY-2624](https://issues.apache.org/jira/browse/CAY-2624) SelectQuery "having" qualifier is not considered when calculating cache key
* [CAY-2627](https://issues.apache.org/jira/browse/CAY-2627) Modeler: ObjRelationship creation dialog ignores delete rule
* [CAY-2628](https://issues.apache.org/jira/browse/CAY-2628) dbimport: unable to add several relationships to existing entity
