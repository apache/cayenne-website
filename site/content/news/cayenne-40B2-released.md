+++
title = "Cayenne 4.0 Beta 2 Released"
date = 2017-10-06 17:38:42+03:00
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

 

Apache Cayenne team is glad to announce a beta 2 release of Cayenne 4.0. 
While API is frozen it includes only bug fixes and documentation updates.

Cayenne can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* [CAY-2319](https://issues.apache.org/jira/browse/CAY-2319) Modeler: Embeddable > Attributes. Undo does not cancel pasted objects
* [CAY-2321](https://issues.apache.org/jira/browse/CAY-2321) cdbimport: Reverse relationship is not created after adding and rev engineeering new db table
* [CAY-2323](https://issues.apache.org/jira/browse/CAY-2323) Modeler: Graph. No warning while saving the image with existing name
* [CAY-2331](https://issues.apache.org/jira/browse/CAY-2331) cgen: broken templates for data map
* [CAY-2347](https://issues.apache.org/jira/browse/CAY-2347) cdbimport: can't get all relationships on the first pass
* [CAY-2349](https://issues.apache.org/jira/browse/CAY-2349) Cache issue: 'SelectQuery' with prefetches loses relationships
* [CAY-2350](https://issues.apache.org/jira/browse/CAY-2350) Expression: NotIn with empty collection returns empty result
* [CAY-2353](https://issues.apache.org/jira/browse/CAY-2353) Broken paginated column select with only one entity in the result
* [CAY-2354](https://issues.apache.org/jira/browse/CAY-2354) DbGenerator.runGenerator must commit its connection
* [CAY-2356](https://issues.apache.org/jira/browse/CAY-2356) EJBQL: Incorrect COUNT() on outer joined table
* [CAY-2357](https://issues.apache.org/jira/browse/CAY-2357) Generic select queries silently convert result to nulls if no PK column found
* [CAY-2358](https://issues.apache.org/jira/browse/CAY-2358) NPE when callbacks invoked on null objects
* [CAY-2359](https://issues.apache.org/jira/browse/CAY-2359) EJBQL: db path in not supported in ORDER BY
* [CAY-2362](https://issues.apache.org/jira/browse/CAY-2362) ColumnSelect: unable to use Property without type
* [CAY-2363](https://issues.apache.org/jira/browse/CAY-2363) ColumnSelect: unable to use from nested context
* [CAY-2366](https://issues.apache.org/jira/browse/CAY-2366) Incorrect EJBQL COUNT translation 
