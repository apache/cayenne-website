+++
title = "Cayenne 4.2 Release Candidate 1 Released"
date = 2022-06-10 15:00:00+03:00
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

 

Apache Cayenne team is glad to announce release candidate of _Cayenne 4.2_. 
Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features:

- [CAY-2711](https://issues.apache.org/jira/browse/CAY-2711) JDK 17 compatibility
- [CAY-2728](https://issues.apache.org/jira/browse/CAY-2728) Add ExtendedType to generate user-friendly exceptions for internally used values


<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2630](https://issues.apache.org/jira/browse/CAY-2630) Prefetched relationships not preserving pending changes
- [CAY-2697](https://issues.apache.org/jira/browse/CAY-2697) Read-only cgen template creates mutator methods for to-many relationships
- [CAY-2724](https://issues.apache.org/jira/browse/CAY-2724) Duplicating relationship after editing its name
- [CAY-2727](https://issues.apache.org/jira/browse/CAY-2727) Modeler: cgen destDir Unix platform path separator
- [CAY-2729](https://issues.apache.org/jira/browse/CAY-2729) Unable to use custom templates from a folder at upper level then datamap
- [CAY-2730](https://issues.apache.org/jira/browse/CAY-2730) Duplicating lines in a cgen config saved to datamap.xml
- [CAY-2731](https://issues.apache.org/jira/browse/CAY-2731) Exception when setting a CLOB on H2 v2.0.202
- [CAY-2733](https://issues.apache.org/jira/browse/CAY-2733) Modeler can't use custom templates set in a datamap
- [CAY-2734](https://issues.apache.org/jira/browse/CAY-2734) Improve support for the DECIMAL type
- [CAY-2736](https://issues.apache.org/jira/browse/CAY-2736) Can't use function names as a path in a string-based expression
