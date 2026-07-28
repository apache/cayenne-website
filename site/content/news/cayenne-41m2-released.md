+++
title = "Cayenne 4.1 Milestone 2 Released"
date = 2018-07-23 12:00:00+03:00
+++

 

Apache Cayenne team is glad to announce next milestone release of Cayenne 4.1. 
This is a development release that introduces a number of nice new features along with many fixes and improvements.

##### Notable changes are:

1. New reverse engineering UI in Cayenne Modeler, that is much more intuitive and customizable, 
more over configuration is now saved so you can evolve it with your model and perform reverse engineering in one click.
<p style="text-align: center;">
    <img class="img-fluid" src="/img/modeler-cdbimport.png" alt="New reverse engineering UI"/>
</p>

2. User controlled transaction propagation logic and isolation level.

```java
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

Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features:

- [CAY-1683](https://issues.apache.org/jira/browse/CAY-1683) Injectable PkGenerator
- [CAY-2304](https://issues.apache.org/jira/browse/CAY-2304) Custom ClassLoader for Maven and Gradle plugins that use project dependencies
- [CAY-2334](https://issues.apache.org/jira/browse/CAY-2334) cgen: option to force run from maven/gradle
- [CAY-2337](https://issues.apache.org/jira/browse/CAY-2337) Save reverse engineering configuration with datamap XML
- [CAY-2372](https://issues.apache.org/jira/browse/CAY-2372) Extract new modules from cayenne-server
- [CAY-2377](https://issues.apache.org/jira/browse/CAY-2377) Cleanup deprecated code.
- [CAY-2391](https://issues.apache.org/jira/browse/CAY-2391) cdbimport: add option to skip user-defined relationships
- [CAY-2393](https://issues.apache.org/jira/browse/CAY-2393) Add sqlserver-docker profile to automate tests on SQLServer
- [CAY-2394](https://issues.apache.org/jira/browse/CAY-2394) Upgrade to Apache Velocity 2.0
- [CAY-2395](https://issues.apache.org/jira/browse/CAY-2395) cdbimport: add option to create project file
- [CAY-2396](https://issues.apache.org/jira/browse/CAY-2396) Upgrade maven-assembly-plugin to 3.1.0
- [CAY-2398](https://issues.apache.org/jira/browse/CAY-2398) Deprecate cayenne-joda
- [CAY-2400](https://issues.apache.org/jira/browse/CAY-2400) Deprecate cayenne-dbcp2
- [CAY-2403](https://issues.apache.org/jira/browse/CAY-2403) Extract eventbridges to top level
- [CAY-2404](https://issues.apache.org/jira/browse/CAY-2404) Move itests to maven-plugins
- [CAY-2406](https://issues.apache.org/jira/browse/CAY-2406) Add prefetch-related API to SQLSelect
- [CAY-2407](https://issues.apache.org/jira/browse/CAY-2407) Modeler: add prefetch support for the SQLTemplate query
- [CAY-2410](https://issues.apache.org/jira/browse/CAY-2410) Add prefetch type support for SQLTemplate query and SelectQuery
- [CAY-2414](https://issues.apache.org/jira/browse/CAY-2414) Modeler: new icon design
- [CAY-2415](https://issues.apache.org/jira/browse/CAY-2415) Transaction isolation and propagation support
- [CAY-2416](https://issues.apache.org/jira/browse/CAY-2416) Change TreeMap for HashMap to store data in Cayenne model classes
- [CAY-2422](https://issues.apache.org/jira/browse/CAY-2422) Modeler: Open driver setup window on driver load error
- [CAY-2438](https://issues.apache.org/jira/browse/CAY-2438) Split DataChannel filter into two independent filters
- [CAY-2440](https://issues.apache.org/jira/browse/CAY-2440) cdbimport: allow cross-schema relationships
- [CAY-2443](https://issues.apache.org/jira/browse/CAY-2443) Make SqlTemplate and SqlExec possible to return generated keys

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2282](https://issues.apache.org/jira/browse/CAY-2282) Various Update Issues With Vertical Inheritance
- [CAY-2370](https://issues.apache.org/jira/browse/CAY-2370) ValueObjectType for byte[] fails lookup
- [CAY-2380](https://issues.apache.org/jira/browse/CAY-2380) ReferenceMap should not store or return null values
- [CAY-2381](https://issues.apache.org/jira/browse/CAY-2381) cgen: meaningful PK with boxed type ends up with primitive type in generated source
- [CAY-2382](https://issues.apache.org/jira/browse/CAY-2382) Lack of synchronization in DataContext serialization
- [CAY-2387](https://issues.apache.org/jira/browse/CAY-2387) Can't select byte[] property with ColumnSelect
- [CAY-2388](https://issues.apache.org/jira/browse/CAY-2388) Modeler: Visualization issues with undo/redo actions for attributes and relationships
- [CAY-2389](https://issues.apache.org/jira/browse/CAY-2389) DbEntity qualifier with DbPath expression translates into wrong SQL
- [CAY-2392](https://issues.apache.org/jira/browse/CAY-2392) Modeler: Unable to remove DataNode
- [CAY-2397](https://issues.apache.org/jira/browse/CAY-2397) Modeler: Unable to set enum:value as Entity qualifier
- [CAY-2401](https://issues.apache.org/jira/browse/CAY-2401) Modeler: NPE in ObjEntity sync action
- [CAY-2405](https://issues.apache.org/jira/browse/CAY-2405) Broken prefetch of entity with inheritance and attribute with custom java type
- [CAY-2408](https://issues.apache.org/jira/browse/CAY-2408) Cayenne JDK 10 compatibility
- [CAY-2411](https://issues.apache.org/jira/browse/CAY-2411) Wrong resolution of ExtendedType with ValueObjectType for inherited class
- [CAY-2418](https://issues.apache.org/jira/browse/CAY-2418) Modeler: unable to edit entity selected via Search
- [CAY-2419](https://issues.apache.org/jira/browse/CAY-2419) Modeler: Not changing highlight on selecting search results within one entity
- [CAY-2420](https://issues.apache.org/jira/browse/CAY-2420) Modeler: search is not performed for Stored Procedures
- [CAY-2425](https://issues.apache.org/jira/browse/CAY-2425) Modeler: Migrate DB Direction field is locked if no option was selected in dropdown list
- [CAY-2427](https://issues.apache.org/jira/browse/CAY-2427) Modeler: Undo throws exception
- [CAY-2429](https://issues.apache.org/jira/browse/CAY-2429) Generate classes: Invalid template type: EMBEDDABLE_SINGLE_CLASS
- [CAY-2430](https://issues.apache.org/jira/browse/CAY-2430) Modeler: Redo throws NPE
- [CAY-2435](https://issues.apache.org/jira/browse/CAY-2435) cdbimport: procedure parameters are not imported
- [CAY-2436](https://issues.apache.org/jira/browse/CAY-2436) NPE in CayenneRuntimeException constructor
- [CAY-2439](https://issues.apache.org/jira/browse/CAY-2439) Modeler: Error deleting dbEntity when show only dbEntities filter is set
- [CAY-2442](https://issues.apache.org/jira/browse/CAY-2442) Broken EventBridge providers implementations
