+++
title = "Cayenne 4.2 Milestone 3 Released"
date = 2021-03-19 18:00:00+03:00
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

 

Apache Cayenne team is glad to announce next milestone release of Cayenne 4.2. 

This is a development release that contains some minor fixes and new features. 

Cayenne can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- [CAY-2587](https://issues.apache.org/jira/browse/CAY-2587) SQLServer Limit Offset translation
- [CAY-2677](https://issues.apache.org/jira/browse/CAY-2677) Custom Class Generation Templates for Embeddables and DataMaps
- [CAY-2689](https://issues.apache.org/jira/browse/CAY-2689) ServerRuntime API: missing some variants of the performInTransaction() method
- [CAY-2692](https://issues.apache.org/jira/browse/CAY-2692) Add entity lifecycle callbacks via annotated methods

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- [CAY-2658](https://issues.apache.org/jira/browse/CAY-2658) DataChannelMetaData is null during cgen execution
- [CAY-2661](https://issues.apache.org/jira/browse/CAY-2661) NPE on DB Import screen
- [CAY-2678](https://issues.apache.org/jira/browse/CAY-2678) Inheritance warnings caused by unnecessary MappingCache creations during initialization
- [CAY-2683](https://issues.apache.org/jira/browse/CAY-2683) Don't use DISTINCT for joins on to-one related tables
- [CAY-2685](https://issues.apache.org/jira/browse/CAY-2685) JsonType should use the actual JDBC type, not OTHER
- [CAY-2686](https://issues.apache.org/jira/browse/CAY-2686) SQL translator incorrectly quotes fully qualified tables' names
- [CAY-2687](https://issues.apache.org/jira/browse/CAY-2687) Modeler Migrate Repeatedly Asks to Set Column Type for MySQL
- [CAY-2690](https://issues.apache.org/jira/browse/CAY-2690) dbimport skips length changes for BINARY and VARBINARY columns
- [CAY-2691](https://issues.apache.org/jira/browse/CAY-2691) MySQL driver 8.0.x stores LocalDateTime differently than 5.1.x
- [CAY-2693](https://issues.apache.org/jira/browse/CAY-2693) Abstract subentities do not have rows materialized correctly
- [CAY-2694](https://issues.apache.org/jira/browse/CAY-2694) Precision issues with reverse / forward engineering of time types on MySQL
- [CAY-2695](https://issues.apache.org/jira/browse/CAY-2695) Reverse engineering on SQLite fails due to feature not being supported
- [CAY-2698](https://issues.apache.org/jira/browse/CAY-2698) EventSubject.getSubject() is not thread safe
