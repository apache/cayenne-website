+++
title = "Cayenne 4.1 Beta 1 Released"
date = 2019-03-18 12:00:00+03:00
+++

 

Apache Cayenne team is glad to announce the first beta release of Cayenne 4.1. 
The API is frozen now and it is safe to try it out. From now on the 4.1 branch will concentrate on bug fixes.
The highlights of this release are:

* Cross-context synchronization is turned off by default. This should improve commit performance and data consistency in app clustering scenarios. It can be turned back on via `cayenne.server.contexts_sync_strategy` property (aka `Constants.SERVER_CONTEXTS_SYNC_PROPERTY`).

* Improved "DB Import" tab for DataMaps

* "Class Generation" dialog is now implemented as a DataMap tab. Class generation user selections are preserved in the project and can be reused from Maven/Gradle/Ant cgen.

* General Modeler cleanup and bugfixes; framework bugfixes.

Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>


#### Changes/New Features:

- [CAY-2446](https://issues.apache.org/jira/browse/CAY-2446) Run Disjoint By Id queries outside of synchronized block
- [CAY-2447](https://issues.apache.org/jira/browse/CAY-2447) Crypto support for LocalDateTime
- [CAY-2471](https://issues.apache.org/jira/browse/CAY-2471) Support multiple XML project versions
- [CAY-2473](https://issues.apache.org/jira/browse/CAY-2473) Modeler: cleanup attributes and relationship editors
- [CAY-2474](https://issues.apache.org/jira/browse/CAY-2474) Modeler: swap buttons in dialog toolbar
- [CAY-2475](https://issues.apache.org/jira/browse/CAY-2475) Modeler: move inheritance icon to name column in objAttr table and objRel table
- [CAY-2478](https://issues.apache.org/jira/browse/CAY-2478) cgen: Generate properties for PK
- [CAY-2481](https://issues.apache.org/jira/browse/CAY-2481) Support for Object[] as return type in SQLTemplate and SQLExec
- [CAY-2485](https://issues.apache.org/jira/browse/CAY-2485) Compact Slf4j Logger
- [CAY-2487](https://issues.apache.org/jira/browse/CAY-2487) Removed usage of CayenneException.
- [CAY-2489](https://issues.apache.org/jira/browse/CAY-2489) Modeler: Add validation to the case of not to PK relationships
- [CAY-2491](https://issues.apache.org/jira/browse/CAY-2491) Modeler: Remaster Db Import View
- [CAY-2493](https://issues.apache.org/jira/browse/CAY-2493) Save cgen configuration with datamap XML
- [CAY-2494](https://issues.apache.org/jira/browse/CAY-2494) Rename dbImport tag from 'config' to 'dbImport'
- [CAY-2499](https://issues.apache.org/jira/browse/CAY-2499) Support for COUNT(DISTINCT(column)) function aggregate
- [CAY-2514](https://issues.apache.org/jira/browse/CAY-2514) Set SERVER_CONTEXTS_SYNC_PROPERTY default value to false
- [CAY-2517](https://issues.apache.org/jira/browse/CAY-2517) EventManager: optimization of adding listeners

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2320](https://issues.apache.org/jira/browse/CAY-2320) Modeler: Limit input into numeric fields to 10 digits
- [CAY-2444](https://issues.apache.org/jira/browse/CAY-2444) Change URI from http:// to https:// in xsi:schemaLocation
- [CAY-2445](https://issues.apache.org/jira/browse/CAY-2445) Oracle: Problem with ExpressionFactory.notInExp()
- [CAY-2449](https://issues.apache.org/jira/browse/CAY-2449) Modeler: Needless scrollbar in Generate DB Schema result menu
- [CAY-2450](https://issues.apache.org/jira/browse/CAY-2450) Modeler: Impossible to update Attribute title after syncing ObjEntity
- [CAY-2451](https://issues.apache.org/jira/browse/CAY-2451) Modeler: ObjEntity "Edit" button doesn't open editor for Relationship
- [CAY-2454](https://issues.apache.org/jira/browse/CAY-2454) Modeler: Unable to read validation message if it's truncated
- [CAY-2455](https://issues.apache.org/jira/browse/CAY-2455) Modeler: The width of the pop-up window is very large
- [CAY-2459](https://issues.apache.org/jira/browse/CAY-2459) Modeler: DataMap paste function is not working
- [CAY-2462](https://issues.apache.org/jira/browse/CAY-2462) Modeler: Clipboard holds old content after application was reloaded
- [CAY-2463](https://issues.apache.org/jira/browse/CAY-2463) Modeler: DB Schema generation doesn't work
- [CAY-2464](https://issues.apache.org/jira/browse/CAY-2464) ClassCastException when returning PRUNED_NODE in expression transformer
- [CAY-2470](https://issues.apache.org/jira/browse/CAY-2470) Can't bind SQLExec parameters in a loop
- [CAY-2472](https://issues.apache.org/jira/browse/CAY-2472) Clear cached replacement query on mutation in all indirect queries
- [CAY-2476](https://issues.apache.org/jira/browse/CAY-2476) Modeller: Fixed wrong behaviour of code generation dialog
- [CAY-2480](https://issues.apache.org/jira/browse/CAY-2480) cayenne:cdbgen and cayenne:cgen have identical text in cayenne-maven-plugin
- [CAY-2484](https://issues.apache.org/jira/browse/CAY-2484) maven plugins missing in 4.1.M2 release
- [CAY-2490](https://issues.apache.org/jira/browse/CAY-2490) Modeler: Added dbEntities from other datamaps in dbRelationship dialog.
- [CAY-2496](https://issues.apache.org/jira/browse/CAY-2496) Modeler: Fixed wrong table behavior: focus color, cleanup DBAttribute Path cell on select.
- [CAY-2497](https://issues.apache.org/jira/browse/CAY-2497) Modeler: SQL Scripts tab isn't scrollable
- [CAY-2501](https://issues.apache.org/jira/browse/CAY-2501) Modeler: DbImport ui not loading columns for MySQL connector v8.0
- [CAY-2502](https://issues.apache.org/jira/browse/CAY-2502) Modeler: DataMap in DataNode tree view disappears after dbImport
- [CAY-2504](https://issues.apache.org/jira/browse/CAY-2504) Broken detection logic of NoopEventBridge in DataRowStoreFactory
- [CAY-2505](https://issues.apache.org/jira/browse/CAY-2505) EventBridge providers should be bound without scope
- [CAY-2521](https://issues.apache.org/jira/browse/CAY-2521) Expression without Object ID disjoint issue
- [CAY-2530](https://issues.apache.org/jira/browse/CAY-2530) Modeler: DB Import and Class Generation from Project is performed for removed datamaps
- [CAY-2531](https://issues.apache.org/jira/browse/CAY-2531) Modeler: Importing same schema after Import Revert clears all entities in datamap
- [CAY-2533](https://issues.apache.org/jira/browse/CAY-2533) Modeler: Exception on validating ObjRelationship without db path
- [CAY-2535](https://issues.apache.org/jira/browse/CAY-2535) Modeler: Impossible to import stored procedure apart from db tables
- [CAY-2537](https://issues.apache.org/jira/browse/CAY-2537) Modeler: Schema Generation Complete popup window is hidden
- [CAY-2544](https://issues.apache.org/jira/browse/CAY-2544) Possible name clash of ivar and property name in generated class
- [CAY-2547](https://issues.apache.org/jira/browse/CAY-2547) CayenneDataObject serialization issue
