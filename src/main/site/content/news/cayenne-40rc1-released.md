---
title: Cayenne 4.0 release candidate is out
date: 2018-04-25T12:00:00+03:00
--- 

Apache Cayenne team is glad to announce a release candidate of _Cayenne 4.0_.

It brings new icons to Cayenne Modeler plus some minor bug fixes.

![Cayenne Modeler 4.0.RC1](/img/cayenne-modeler-40rc1.png)

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

Changes/New Features:

* {{% jira 2414 %}} Modeler: new icon design

Bug Fixes:

* {{% jira 2253 %}} Cayenne JDK9 compatibility
* {{% jira 2361 %}} PostgreSQL DbGenerator issues
* {{% jira 2364 %}} Wrong logging in SQLTemplate
* {{% jira 2365 %}} SQLExec query tries to convert (unexpected) result set into objects
* {{% jira 2367 %}} ClassCastException reading object with an attribute of type 'char'
* {{% jira 2368 %}} ColumnSelect: Property.self() translates into wrong SQL code
* {{% jira 2370 %}} ValueObjectType for byte[] fails lookup
* {{% jira 2382 %}} Lack of synchronization in DataContext serialization
* {{% jira 2387 %}} Can't select byte[] property with ColumnSelect
* {{% jira 2388 %}} Modeler: Visualization issues with undo/redo actions for attributes and relationships
* {{% jira 2389 %}} DbEntity qualifier with DbPath expression translates into wrong SQL
* {{% jira 2392 %}} Modeler: Unable to remove DataNode
* {{% jira 2401 %}} Modeler: NPE in ObjEntity sync action
* {{% jira 2405 %}} Broken prefetch of entity with inheritance and attribute with custom java type
* {{% jira 2411 %}} Wrong resolution of ExtendedType with ValueObjectType for inherited class
* {{% jira 2420 %}} Modeler: search is not performed for Stored Procedures
* {{% jira 2429 %}} Generate classes: Invalid template type: EMBEDDABLE_SINGLE_CLASS
