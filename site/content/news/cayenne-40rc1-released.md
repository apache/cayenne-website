+++
title = "Cayenne 4.0 release candidate is out"
date = 2018-04-25 12:00:00+03:00
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

 

Apache Cayenne team is glad to announce a release candidate of _Cayenne 4.0_.

It brings new icons to Cayenne Modeler plus some minor bug fixes.

<p style="text-align: center;">
    <img class="img-fluid" src="/img/cayenne-modeler-40rc1.png" alt="Cayenne Modeler 4.0.RC1"/>
</p>

Cayenne can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

Changes/New Features:

* [CAY-2414](https://issues.apache.org/jira/browse/CAY-2414) Modeler: new icon design

Bug Fixes:

* [CAY-2253](https://issues.apache.org/jira/browse/CAY-2253) Cayenne JDK9 compatibility
* [CAY-2361](https://issues.apache.org/jira/browse/CAY-2361) PostgreSQL DbGenerator issues
* [CAY-2364](https://issues.apache.org/jira/browse/CAY-2364) Wrong logging in SQLTemplate
* [CAY-2365](https://issues.apache.org/jira/browse/CAY-2365) SQLExec query tries to convert (unexpected) result set into objects
* [CAY-2367](https://issues.apache.org/jira/browse/CAY-2367) ClassCastException reading object with an attribute of type 'char'
* [CAY-2368](https://issues.apache.org/jira/browse/CAY-2368) ColumnSelect: Property.self() translates into wrong SQL code
* [CAY-2370](https://issues.apache.org/jira/browse/CAY-2370) ValueObjectType for byte[] fails lookup
* [CAY-2382](https://issues.apache.org/jira/browse/CAY-2382) Lack of synchronization in DataContext serialization
* [CAY-2387](https://issues.apache.org/jira/browse/CAY-2387) Can't select byte[] property with ColumnSelect
* [CAY-2388](https://issues.apache.org/jira/browse/CAY-2388) Modeler: Visualization issues with undo/redo actions for attributes and relationships
* [CAY-2389](https://issues.apache.org/jira/browse/CAY-2389) DbEntity qualifier with DbPath expression translates into wrong SQL
* [CAY-2392](https://issues.apache.org/jira/browse/CAY-2392) Modeler: Unable to remove DataNode
* [CAY-2401](https://issues.apache.org/jira/browse/CAY-2401) Modeler: NPE in ObjEntity sync action
* [CAY-2405](https://issues.apache.org/jira/browse/CAY-2405) Broken prefetch of entity with inheritance and attribute with custom java type
* [CAY-2411](https://issues.apache.org/jira/browse/CAY-2411) Wrong resolution of ExtendedType with ValueObjectType for inherited class
* [CAY-2420](https://issues.apache.org/jira/browse/CAY-2420) Modeler: search is not performed for Stored Procedures
* [CAY-2429](https://issues.apache.org/jira/browse/CAY-2429) Generate classes: Invalid template type: EMBEDDABLE_SINGLE_CLASS
