+++
title = "Cayenne 3.1.2 Released"
date = 2017-11-20 12:00:00+03:00
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

 
This is a maintenance release with a few bug fixes.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

* [CAY-1969](https://issues.apache.org/jira/browse/CAY-1969) Malformed EJBQL Yields NPE
* [CAY-2084](https://issues.apache.org/jira/browse/CAY-2084) ObjectIdQuery - no cache access polymorphism
* [CAY-2101](https://issues.apache.org/jira/browse/CAY-2101) DataContext.currentSnapshot() doesn't set snapshot entity name
* [CAY-2137](https://issues.apache.org/jira/browse/CAY-2137) When generating SQL from EJBQL, use "AND" to separate multiple join conditions
* [CAY-2175](https://issues.apache.org/jira/browse/CAY-2175) AliasName used in EJBQLQuery is not working if it contains mixed case
* [CAY-2226](https://issues.apache.org/jira/browse/CAY-2226) PK generation for Frontbase: PK cache size must be ignored
* [CAY-2276](https://issues.apache.org/jira/browse/CAY-2276) PrePersist listener registered as PostPersist in LifecycleCallbackRegistry.addListener(Class<?>, LifecycleListener)
