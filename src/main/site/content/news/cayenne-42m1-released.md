---
title: Cayenne 4.2 Milestone 1 Released
date: 2020-03-30T12:00:00+03:00
draft: true
--- 

Apache Cayenne team is glad to announce the first milestone release of Cayenne 4.2. 

This is a development release that introduces numerous fixes and new features. While the biggest features are internal, securing future Cayenne development, there are some nice ones in the user API.

Property API is greatly revised. It is type aware now and allows safer usage of SQL functions. 
Additionally, it allows using subqueries:

```java
ColumnSelect<Long> subQuery = ObjectSelect
        .columnQuery(Artist.class, Artist.ARTIST_ID_PK_PROPERTY)
        .where(Artist.DATE_OF_BIRTH.year().gt(1950));

List<Artist> artists = ObjectSelect.query(Artist.class)
        .where(Artist.ARTIST_ID_PK_PROPERTY.in(subQuery))
        .select(context);
```

And it brings alias support to the top level:

```java
ObjectSelect.query(Artist.class)
    .where(Artist.PAINTING_ARRAY.alias("p1").dot(Painting.PAINTING_TITLE).eq("painting2"))
    .and(Artist.PAINTING_ARRAY.alias("p2").dot(Painting.PAINTING_TITLE).eq("painting4"))
    .select(context);
```

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- {{% jira 2465 %}} New SelectTranslator implementation
- {{% jira 2466 %}} New internal API to build SQL
- {{% jira 2467 %}} New type-aware Property API
- {{% jira 2468 %}} Support subqueries in Expression API
- {{% jira 2507 %}} Property API to use path aliases
- {{% jira 2508 %}} Create api to add aliases in expressions
- {{% jira 2510 %}} Create builder to load custom modules into plugins and modeler
- {{% jira 2511 %}} Contribute custom properties for attributes
- {{% jira 2512 %}} Support for custom functions in Expression API and Property API
- {{% jira 2514 %}} Set SERVER_CONTEXTS_SYNC_PROPERTY default value to false
- {{% jira 2517 %}} EventManager: optimization of adding listeners
- {{% jira 2518 %}} Add method to append having qualifier expression to ObjectSelect
- {{% jira 2520 %}} Split ObjectId into several specialized variants
- {{% jira 2522 %}} Make ObjectSelect a direct query
- {{% jira 2523 %}} Deprecate SelectQuery
- {{% jira 2525 %}} Deprecate OpenBase adapter
- {{% jira 2527 %}} API to map Object[] result to POJO
- {{% jira 2539 %}} Import procedures with the help of MergerToken
- {{% jira 2540 %}} Modeler: redesign dbRelationship editor dialog
- {{% jira 2542 %}} Modeler: redesign ObjRelationship editor dialog
- {{% jira 2543 %}} Move ResultSetMapping generation from metadata to translator
- {{% jira 2549 %}} Modeler: Redesign ObjAttribute editor dialog
- {{% jira 2551 %}} Create extended type for abstract Number class
- {{% jira 2555 %}} Use explicit ArcId in GraphChangeHandler methods
- {{% jira 2557 %}} Add java.time.Duration and java.time.Period to supported types
- {{% jira 2562 %}} Make ROPServerModule autoloaded
- {{% jira 2563 %}} Deprecate old scalarQuery methods in SQLSelect
- {{% jira 2568 %}} Class Generation: Superclass Package setting persistence
- {{% jira 2569 %}} Custom 'Naming Strategy' in Cayenne Modeler
- {{% jira 2570 %}} Use MySQL adapter for latest versions of MariaDB
- {{% jira 2571 %}} DataDomainFlushAction redesign
- {{% jira 2579 %}} Review and possibly relax usage of readonly flag of ObjRelationship
- {{% jira 2585 %}} Rename scalarQuery and params methods in SQLSelect
- {{% jira 2590 %}} Add method to set query timeout to queries
- {{% jira 2592 %}} Modeler: make all datamaps selected in global cgen tab
- {{% jira 2593 %}} Add tableTypes field to dbImport config in dataMap
- {{% jira 2602 %}} Remove RTRIM of char columns in Sybase
- {{% jira 2604 %}} Specialization of property API for PK
- {{% jira 2610 %}} Align methods in ObjectSelect and SQLSelect
- {{% jira 2611 %}} Exclude system catalogs and schemas when run dbImport without config
- {{% jira 2612 %}} Modeler: add lazy-loading to dbImport tab
- {{% jira 2645 %}} Modeler: DbImport tree highlight improvement
- {{% jira 2650 %}} Support using generated primary keys along with batch inserts
- {{% jira 2651 %}} Support multiple IDs in the SelectById query

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- {{% jira 2019 %}} Optimistic locking always fails on CRYPTO columns
- {{% jira 2332 %}} Property API: unable to use eq() and in() methods for toMany relationships
- {{% jira 2417 %}} Modeler: wrong title in attribute context menu
- {{% jira 2506 %}} Java class generated for Embeddable object is not serializable
- {{% jira 2509 %}} Result of resolving lazily faulted relationships can be out-of-date
- {{% jira 2530 %}} Modeler: DB Import and Class Generation from Project is performed for removed datamaps
- {{% jira 2531 %}} Modeler: Importing same schema after Import Revert clears all entities in datamap
- {{% jira 2533 %}} Modeler: Exception on validating ObjRelationship without db path
- {{% jira 2535 %}} Modeler: Impossible to import stored procedure apart from db tables
- {{% jira 2537 %}} Modeler: Schema Generation Complete popup window is hidden
- {{% jira 2538 %}} Modeler: dbImport configuration unclear behavior
- {{% jira 2541 %}} Performing query with expression with ObjectId throws NPE in some cases
- {{% jira 2544 %}} Possible name clash of ivar and property name in generated class
- {{% jira 2547 %}} CayenneDataObject serialization issue
- {{% jira 2553 %}} Wrong disjoint prefetch query qualifier
- {{% jira 2559 %}} Modeler: Warning dialog shows wrong information after changing target entity in dbRelationship
- {{% jira 2561 %}} Modeler: cgen type combobox doesn't set templates
- {{% jira 2572 %}} Queries are not sorted by name in data map XML
- {{% jira 2573 %}} DI field injection is triggered when creating sql Driver
- {{% jira 2575 %}} Select translator: Wrong translation of IN Expression
- {{% jira 2576 %}} Ant cgen task is broken
- {{% jira 2577 %}} Between property with extended type failure
- {{% jira 2578 %}} Wrong bindings in select of related entity by compound FK
- {{% jira 2580 %}} Cgen: Can't use custom templates for client mode
- {{% jira 2582 %}} Double insert of manyToMany relationship mapped to Set
- {{% jira 2584 %}} Crypto: can't use ColumnSelect with encrypted columns
- {{% jira 2588 %}} IdRowReader: ArrayIndexOutOfBoundsException
- {{% jira 2591 %}} Modeler: project becomes dirty after click on dbImport or cgen tab
- {{% jira 2594 %}} DbImport: AutoAdapter resolving inside an import operation hangs up the op on Hana DB
- {{% jira 2595 %}} ObjAttributes are not sorted in alphabetical ordering on save
- {{% jira 2596 %}} DbImport xml config changes after dbImport plugin task execution
- {{% jira 2600 %}} Modeler DbImport: Can't retrieve schema for databases with no catalog support
- {{% jira 2601 %}} Modeler DbImport: result dialog issues
- {{% jira 2603 %}} NPE reloading project in the model
- {{% jira 2605 %}} Modeler: Unable to save - java.nio.file.InvalidPathException
- {{% jira 2606 %}} Can't resolve obj path with embeddable component
- {{% jira 2608 %}} CayenneModeler: NPE when reverse engineering with an auto-adapter DataSource
- {{% jira 2609 %}} Modeler: can't close dbImport result dialog window
- {{% jira 2616 %}} Modeler: Wrong handling of path with spaces
- {{% jira 2618 %}} Unstable property ordering in generated classes
- {{% jira 2619 %}} "to-dep PK" related dbimport delta confuses the Modeler
- {{% jira 2624 %}} SelectQuery "having" qualifier is not considered when calculating cache key
- {{% jira 2627 %}} Modeler: ObjRelationship creation dialog ignores delete rule
- {{% jira 2628 %}} dbimport: unable to add several relationships to existing entity
- {{% jira 2631 %}} Can no longer use "byte[]" as root of scalar SQLSelect
- {{% jira 2632 %}} Modeler: issue saving cgen path for maven project
- {{% jira 2633 %}} Modeler: attribute sorting logic in cgen can corrupt model
- {{% jira 2634 %}} Minor inconsistencies in Modeler "DB Import"
- {{% jira 2635 %}} Lambda expressions break ROP serialization
- {{% jira 2646 %}} Wrong target path selection logic in cgen config
- {{% jira 2647 %}} Modeler: project upgrade from 4.0.B2 to 4.1.RC2 failure
- {{% jira 2648 %}} Whitespace symbols in JDBC Driver and DB URL lines lead to incorrect driver loading
