+++
title = "Cayenne 4.0.1 Released"
date = 2018-12-28 12:00:00+03:00
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

* [CAY-2473](https://issues.apache.org/jira/browse/CAY-2473) Modeler: cleanup attributes and relationship editors
* [CAY-2474](https://issues.apache.org/jira/browse/CAY-2474) Modeler: swap buttons in dialog toolbar
* [CAY-2475](https://issues.apache.org/jira/browse/CAY-2475) Modeler: move inheritance icon to name column in objAttr table and objRel table
* [CAY-2476](https://issues.apache.org/jira/browse/CAY-2476) Modeler: Fixed wrong behaviour of code generation dialog
* [CAY-2479](https://issues.apache.org/jira/browse/CAY-2479) Modeler: update cgen dialog

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2419](https://issues.apache.org/jira/browse/CAY-2419) Not changing highlight on selecting search results within one entity
* [CAY-2320](https://issues.apache.org/jira/browse/CAY-2320) Modeler: Limit input into numeric fields to 10 digits
* [CAY-2449](https://issues.apache.org/jira/browse/CAY-2449) Modeler: Needless scrollbar in Generate DB Schema result menu
* [CAY-2450](https://issues.apache.org/jira/browse/CAY-2450) Modeler: Impossible to update Attribute title after syncing ObjEntity
* [CAY-2451](https://issues.apache.org/jira/browse/CAY-2451) Modeler: ObjEntity "Edit" button doesn't open editor for Relationship
* [CAY-2454](https://issues.apache.org/jira/browse/CAY-2454) Modeler: Unable to read validation message if it's truncated
* [CAY-2459](https://issues.apache.org/jira/browse/CAY-2459) Modeler: DataMap Paste function is not working
* [CAY-2462](https://issues.apache.org/jira/browse/CAY-2462) Modeler: Clipboard holds old content after application was reloaded
* [CAY-2464](https://issues.apache.org/jira/browse/CAY-2464) ClassCastException when returning PRUNED_NODE in expression transformer
* [CAY-2470](https://issues.apache.org/jira/browse/CAY-2470) Can't bind SQLExec parameters in a loop
* [CAY-2472](https://issues.apache.org/jira/browse/CAY-2472) Clear cached replacement query on mutation in all indirect queries
* [CAY-2480](https://issues.apache.org/jira/browse/CAY-2480) cayenne:cdbgen and cayenne:cgen have identical text in cayenne-maven-plugin
* [CAY-2497](https://issues.apache.org/jira/browse/CAY-2497) Modeler: SQL Scripts tab isn't scrollable
* [CAY-2504](https://issues.apache.org/jira/browse/CAY-2504) Broken detection logic of NoopEventBridge in DataRowStoreFactory
* [CAY-2505](https://issues.apache.org/jira/browse/CAY-2505) EventBridge providers should be bound without scope
