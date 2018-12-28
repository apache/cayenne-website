---
title: Cayenne 4.0.1 Released
date: 2018-12-28T12:00:00+03:00
--- 
This is a maintenance release with some minor changes in Modeler and a few bug fixes.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2473 %}} Modeler: cleanup attributes and relationship editors
* {{% jira 2474 %}} Modeler: swap buttons in dialog toolbar
* {{% jira 2475 %}} Modeler: move inheritance icon to name column in objAttr table and objRel table
* {{% jira 2476 %}} Modeler: Fixed wrong behaviour of code generation dialog
* {{% jira 2479 %}} Modeler: update cgen dialog

{{% gap %}}

#### Bug Fixes:

* {{% jira 2419 %}} Not changing highlight on selecting search results within one entity
* {{% jira 2320 %}} Modeler: Limit input into numeric fields to 10 digits
* {{% jira 2449 %}} Modeler: Needless scrollbar in Generate DB Schema result menu
* {{% jira 2450 %}} Modeler: Impossible to update Attribute title after syncing ObjEntity
* {{% jira 2451 %}} Modeler: ObjEntity "Edit" button doesn't open editor for Relationship
* {{% jira 2454 %}} Modeler: Unable to read validation message if it's truncated
* {{% jira 2459 %}} Modeler: DataMap Paste function is not working
* {{% jira 2462 %}} Modeler: Clipboard holds old content after application was reloaded
* {{% jira 2464 %}} ClassCastException when returning PRUNED_NODE in expression transformer
* {{% jira 2470 %}} Can't bind SQLExec parameters in a loop
* {{% jira 2472 %}} Clear cached replacement query on mutation in all indirect queries
* {{% jira 2480 %}} cayenne:cdbgen and cayenne:cgen have identical text in cayenne-maven-plugin
* {{% jira 2497 %}} Modeler: SQL Scripts tab isn't scrollable
* {{% jira 2504 %}} Broken detection logic of NoopEventBridge in DataRowStoreFactory
* {{% jira 2505 %}} EventBridge providers should be bound without scope