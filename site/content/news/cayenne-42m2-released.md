+++
title = "Cayenne 4.2 Milestone 2 Released"
date = 2020-10-12 12:00:00+03:00
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

- [CAY-2338](https://issues.apache.org/jira/browse/CAY-2338) Support comments in cgen and default templates
- [CAY-2656](https://issues.apache.org/jira/browse/CAY-2656) Modeler: option to download required jars directly from maven central
- [CAY-2657](https://issues.apache.org/jira/browse/CAY-2657) SelectQueryDescriptor should use ObjectSelect
- [CAY-2659](https://issues.apache.org/jira/browse/CAY-2659) Use new SQLBuilder utility to generate SQL for batch queries
- [CAY-2662](https://issues.apache.org/jira/browse/CAY-2662) Use custom interface for SQL tree processor instead of a Function<Node, Node>
- [CAY-2663](https://issues.apache.org/jira/browse/CAY-2663) Support for custom SQL operators
- [CAY-2664](https://issues.apache.org/jira/browse/CAY-2664) Add methods to EntityProperty to allow direct usage of primary key values
- [CAY-2665](https://issues.apache.org/jira/browse/CAY-2665) Support for widespread SQL types that falls into Jdbc type OTHER
- [CAY-2668](https://issues.apache.org/jira/browse/CAY-2668) Experimental graph-based db operations sorter
- [CAY-2670](https://issues.apache.org/jira/browse/CAY-2670) CommitLog does not include FKs for deleted objects with one-way relationships
- [CAY-2673](https://issues.apache.org/jira/browse/CAY-2673) Support ordering by aggregate functions
- [CAY-2674](https://issues.apache.org/jira/browse/CAY-2674) Support in-memory evaluation of aggregate functions

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- [CAY-2591](https://issues.apache.org/jira/browse/CAY-2591) Modeler: project becomes dirty after click on dbImport or cgen tab
- [CAY-2671](https://issues.apache.org/jira/browse/CAY-2671) QualifierTranslator fails to translate expressions with compound PKs/FKs
- [CAY-2675](https://issues.apache.org/jira/browse/CAY-2675) A one-to-one relationship with meaningful PK can be nullified in the nested context
- [CAY-2676](https://issues.apache.org/jira/browse/CAY-2676) Degradation: Custom class generation templates are not working anymore
- [CAY-2679](https://issues.apache.org/jira/browse/CAY-2679) Unstable ordering of relationships in the .map.xml file
- [CAY-2681](https://issues.apache.org/jira/browse/CAY-2681) Modeler: All selected checkboxes cause project to become dirty at initialization
- [CAY-2682](https://issues.apache.org/jira/browse/CAY-2682) Vertical Inheritance: DB-generated PK doesn't propagate from the root to children
