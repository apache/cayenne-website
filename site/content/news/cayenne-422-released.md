+++
title = "Cayenne 4.2.2 Released"
date = 2025-03-24 10:00:00+03:00
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

 
This is a maintenance release of Cayenne 4.2. This version fixes several important issues and recomended for the upgrade.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* [CAY-2867](https://issues.apache.org/jira/browse/CAY-2867) Tweak GraphBasedDbRowOpSorter logic to allow related updates
* [CAY-2873](https://issues.apache.org/jira/browse/CAY-2873) Change Orderings.orderedList() to accept a Collection rather than a List

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2866](https://issues.apache.org/jira/browse/CAY-2866) DefaultDataDomainFlushAction breaks on circular relationship update
* [CAY-2868](https://issues.apache.org/jira/browse/CAY-2868) Regression: DefaultDbRowOpSorter shouldn't sort update operations
* [CAY-2871](https://issues.apache.org/jira/browse/CAY-2871) QualifierTranslator breaks on a relationship with a compound FK
* [CAY-2872](https://issues.apache.org/jira/browse/CAY-2872) CayenneModeler "Documentation" link is broken
* [CAY-2876](https://issues.apache.org/jira/browse/CAY-2876) Memory leak in the ObjectStore
* [CAY-2879](https://issues.apache.org/jira/browse/CAY-2879) Negative number for non parameterized ObjectSelect query not processed correctly

