---
title: Cayenne 4.1 Beta 2 Released
date: 2019-03-18T12:00:00+03:00
url: /2019/03/cayenne-41b1-released.html
--- 

Apache Cayenne team is glad to announce first beta release of Cayenne 4.1. 
The API is frozen now and it is safe to try it out. From now on the 4.1 branch will concentrate on bug fixes.

Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}


#### Changes/New Features:

- {{% jira 2446 %}} Run Disjoint By Id queries outside of synchronized block
- {{% jira 2447 %}} Crypto support for LocalDateTime
- {{% jira 2471 %}} Support multiple XML project versions
- {{% jira 2473 %}} Modeler: cleanup attributes and relationship editors
- {{% jira 2474 %}} Modeler: swap buttons in dialog toolbar
- {{% jira 2475 %}} Modeler: move inheritance icon to name column in objAttr table and objRel table
- {{% jira 2478 %}} cgen: Generate properties for PK
- {{% jira 2481 %}} Support for Object[] as return type in SQLTemplate and SQLExec
- {{% jira 2485 %}} Compact Slf4j Logger
- {{% jira 2487 %}} Removed usage of CayenneException.
- {{% jira 2489 %}} Modeler: Add validation to the case of not to PK relationships
- {{% jira 2491 %}} Modeler: Remaster Db Import View
- {{% jira 2493 %}} Save cgen configuration with datamap XML
- {{% jira 2494 %}} Rename dbImport tag from 'config' to 'dbImport'
- {{% jira 2499 %}} Support for COUNT(DISTINCT(column)) function aggregate
- {{% jira 2514 %}} Set SERVER_CONTEXTS_SYNC_PROPERTY default value to false
- {{% jira 2517 %}} EventManager: optimization of adding listeners

{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2320 %}} Modeler: Limit input into numeric fields to 10 digits
- {{% jira 2444 %}} Change URI from http:// to https:// in xsi:schemaLocation
- {{% jira 2445 %}} Oracle: Problem with ExpressionFactory.notInExp()
- {{% jira 2449 %}} Modeler: Needless scrollbar in Generate DB Schema result menu
- {{% jira 2450 %}} Modeler: Impossible to update Attribute title after syncing ObjEntity
- {{% jira 2451 %}} Modeler: ObjEntity "Edit" button doesn't open editor for Relationship
- {{% jira 2454 %}} Modeler: Unable to read validation message if it's truncated
- {{% jira 2455 %}} Modeler: The width of the pop-up window is very large
- {{% jira 2459 %}} Modeler: DataMap paste function is not working
- {{% jira 2462 %}} Modeler: Clipboard holds old content after application was reloaded
- {{% jira 2463 %}} Modeler: DB Schema generation doesn't work
- {{% jira 2464 %}} ClassCastException when returning PRUNED_NODE in expression transformer
- {{% jira 2470 %}} Can't bind SQLExec parameters in a loop
- {{% jira 2472 %}} Clear cached replacement query on mutation in all indirect queries
- {{% jira 2476 %}} Modeller: Fixed wrong behaviour of code generation dialog
- {{% jira 2480 %}} cayenne:cdbgen and cayenne:cgen have identical text in cayenne-maven-plugin
- {{% jira 2484 %}} maven plugins missing in 4.1.M2 release
- {{% jira 2490 %}} Modeler: Added dbEntities from other datamaps in dbRelationship dialog.
- {{% jira 2496 %}} Modeler: Fixed wrong table behavior: focus color, cleanup DBAttribute Path cell on select.
- {{% jira 2497 %}} Modeler: SQL Scripts tab isn't scrollable
- {{% jira 2501 %}} Modeler: DbImport ui not loading columns for MySQL connector v8.0
- {{% jira 2502 %}} Modeler: DataMap in DataNode tree view disappears after dbImport
- {{% jira 2504 %}} Broken detection logic of NoopEventBridge in DataRowStoreFactory
- {{% jira 2505 %}} EventBridge providers should be bound without scope
- {{% jira 2521 %}} Expression without Object ID disjoint issue
- {{% jira 2530 %}} Modeler: DB Import and Class Generation from Project is performed for removed datamaps
- {{% jira 2531 %}} Modeler: Importing same schema after Import Revert clears all entities in datamap
- {{% jira 2533 %}} Modeler: Exception on validating ObjRelationship without db path
- {{% jira 2535 %}} Modeler: Impossible to import stored procedure apart from db tables
- {{% jira 2537 %}} Modeler: Schema Generation Complete popup window is hidden
- {{% jira 2544 %}} Possible name clash of ivar and property name in generated class
- {{% jira 2547 %}} CayenneDataObject serialization issue
