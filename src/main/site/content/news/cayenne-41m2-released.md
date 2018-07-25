---
title: Cayenne 4.1 Milestone 2 Released
date: 2018-07-23T12:00:00+03:00
url: /2018/07/cayenne-41m2-released.html
--- 

Apache Cayenne team is glad to announce next milestone release of Cayenne 4.1. 
This is a development release that introduces a number of nice new features along with many fixes and improvements.

##### Notable changes are:

1. New reverse engineering UI in Cayenne Modeler, that is much more intuitive and customizable, 
more over configuration is now saved so you can evolve it with your model and perform reverse engineering in one click.
<p style="text-align: center;">
    <img class="img-fluid" src="/img/modeler-cdbimport.png" alt="New reverse engineering UI"/>
</p>

2. User controlled transaction propagation logic and isolation level.

```
    TransactionManager manager = runtime.getInjector().getInstance(TransactionManager.class);
    TransactionDescriptor descriptor = new TransactionDescriptor(
            Connection.TRANSACTION_SERIALIZABLE, // set transaction isolation to SERIALIZABLE 
            TransactionPropagation.REQUIRES_NEW  // require new transaction for every operation
    );
    manager.performInTransaction(() -> {
        // perform some DB operations...
        return null;
    }, descriptor);
    
```

**Important note**: this release removes all code deprecated in Cayenne 4.0, so review and fix your code before update.

Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Changes/New Features:

- {{% jira 1683 %}} Injectable PkGenerator
- {{% jira 2304 %}} Custom ClassLoader for Maven and Gradle plugins that use project dependencies
- {{% jira 2334 %}} cgen: option to force run from maven/gradle
- {{% jira 2337 %}} Save reverse engineering configuration with datamap XML
- {{% jira 2372 %}} Extract new modules from cayenne-server
- {{% jira 2377 %}} Cleanup deprecated code.
- {{% jira 2391 %}} cdbimport: add option to skip user-defined relationships
- {{% jira 2393 %}} Add sqlserver-docker profile to automate tests on SQLServer
- {{% jira 2394 %}} Upgrade to Apache Velocity 2.0
- {{% jira 2395 %}} cdbimport: add option to create project file
- {{% jira 2396 %}} Upgrade maven-assembly-plugin to 3.1.0
- {{% jira 2398 %}} Deprecate cayenne-joda
- {{% jira 2400 %}} Deprecate cayenne-dbcp2
- {{% jira 2403 %}} Extract eventbridges to top level
- {{% jira 2404 %}} Move itests to maven-plugins
- {{% jira 2406 %}} Add prefetch-related API to SQLSelect
- {{% jira 2407 %}} Modeler: add prefetch support for the SQLTemplate query
- {{% jira 2410 %}} Add prefetch type support for SQLTemplate query and SelectQuery
- {{% jira 2414 %}} Modeler: new icon design
- {{% jira 2415 %}} Transaction isolation and propagation support
- {{% jira 2416 %}} Change TreeMap for HashMap to store data in Cayenne model classes
- {{% jira 2422 %}} Modeler: Open driver setup window on driver load error
- {{% jira 2438 %}} Split DataChannel filter into two independent filters
- {{% jira 2440 %}} cdbimport: allow cross-schema relationships
- {{% jira 2443 %}} Make SqlTemplate and SqlExec possible to return generated keys

{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2282 %}} Various Update Issues With Vertical Inheritance
- {{% jira 2370 %}} ValueObjectType for byte[] fails lookup
- {{% jira 2380 %}} ReferenceMap should not store or return null values
- {{% jira 2381 %}} cgen: meaningful PK with boxed type ends up with primitive type in generated source
- {{% jira 2382 %}} Lack of synchronization in DataContext serialization
- {{% jira 2387 %}} Can't select byte[] property with ColumnSelect
- {{% jira 2388 %}} Modeler: Visualization issues with undo/redo actions for attributes and relationships
- {{% jira 2389 %}} DbEntity qualifier with DbPath expression translates into wrong SQL
- {{% jira 2392 %}} Modeler: Unable to remove DataNode
- {{% jira 2397 %}} Modeler: Unable to set enum:value as Entity qualifier
- {{% jira 2401 %}} Modeler: NPE in ObjEntity sync action
- {{% jira 2405 %}} Broken prefetch of entity with inheritance and attribute with custom java type
- {{% jira 2408 %}} Cayenne JDK 10 compatibility
- {{% jira 2411 %}} Wrong resolution of ExtendedType with ValueObjectType for inherited class
- {{% jira 2418 %}} Modeler: unable to edit entity selected via Search
- {{% jira 2419 %}} Modeler: Not changing highlight on selecting search results within one entity
- {{% jira 2420 %}} Modeler: search is not performed for Stored Procedures
- {{% jira 2425 %}} Modeler: Migrate DB Direction field is locked if no option was selected in dropdown list
- {{% jira 2427 %}} Modeler: Undo throws exception
- {{% jira 2429 %}} Generate classes: Invalid template type: EMBEDDABLE_SINGLE_CLASS
- {{% jira 2430 %}} Modeler: Redo throws NPE
- {{% jira 2435 %}} cdbimport: procedure parameters are not imported
- {{% jira 2436 %}} NPE in CayenneRuntimeException constructor
- {{% jira 2439 %}} Modeler: Error deleting dbEntity when show only dbEntities filter is set
- {{% jira 2442 %}} Broken EventBridge providers implementations