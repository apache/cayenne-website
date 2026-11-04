---
title: Cayenne 5.0 Release Candidate 1 Released
date: 2026-11-04T12:00:00+03:00
---

Apache Cayenne development team is glad to announce the first release candidate of a new major version of Cayenne.
The latest version can be downloaded from [here](/download.html).

**NOTE:** Please see [Milestone 1](/2024/09/cayenne-50m1-released/), [Milestone 2](/2026/06/cayenne-50m2-released/) and [Milestone 3](/2026/08/cayenne-50m3-released/) release notes for more information on Cayenne 5.

### Full List of Changes in this Release

#### Changes/New Features

- {{% jira 2875 %}} Allow storing UUIDs in binary columns
- {{% jira 2998 %}} Modeler: clickabe "Target" column to navigate relationships
- {{% jira 3000 %}} Modeler: unifying the main views of all model objects
- {{% jira 3004 %}} Modeler: Rework DbEntity PK generation UI to match the XML model
- {{% jira 3007 %}} Deprecate SelectById
- {{% jira 3010 %}} LocalDateTime and friends should be accessed directly via JDBC
- {{% jira 3012 %}} Improve reflection performance
- {{% jira 3013 %}} MySQL: JDBC-level streaming for iterators
- {{% jira 3014 %}} Remove QueryChain
- {{% jira 3015 %}} Get rid of RefreshQuery
- {{% jira 3016 %}} Get rid of RelationshipQuery
- {{% jira 3017 %}} ObjectContext should not be a DataChannel
- {{% jira 3019 %}} Skip noop conditions in generated SQL
- {{% jira 3020 %}} Remove serialization contracts
- {{% jira 3021 %}} Get rid of ObjectIdQuery
- {{% jira 3022 %}} Cleanup ObjectContext / DataContext query API
- {{% jira 3023 %}} Replace QueryResult with a List of redesigned QueryResult items
- {{% jira 3024 %}} Replace QueryResponse with List<QueryResult>
- {{% jira 3025 %}} ObjectContext to require/return Persistent for all object ops
- {{% jira 3026 %}} Parseable ObjectSelect / ColumnSelect
- {{% jira 3027 %}} Replace StringIdQuery with StringIdFetcher
- {{% jira 3028 %}} Im-memory evaluation of ASTSum
- {{% jira 3034 %}} Remove "cayenne-osgi" module
- {{% jira 3035 %}} Remove "cayenne-lifecycle" module
- {{% jira 3036 %}} Auto-upgrade projects in runtime
- {{% jira 3037 %}} Switch ObjectSelect query format in XML to the parsable string
- {{% jira 3038 %}} Remove EJBQLQuery
- {{% jira 3039 %}} Refactor Expressions to be independent from the parser syntax
- {{% jira 3040 %}} Descriptive XML tags for mapped queries
- {{% jira 3041 %}} Unify XML style across XSDs
- {{% jira 3042 %}} Rename "domain" to "project" in the Modeler and XSD
- {{% jira 3043 %}} project.xsd, dataMap.xsd: replace "property" with top tag attributes
- {{% jira 3047 %}} Per-statement "snapshotVersion"
- {{% jira 3048 %}} Per-object locking in the ObjectStore
- {{% jira 3049 %}} Cheap ClockMap to replace ConcurrentLinkedHashMap
- {{% jira 3050 %}} Array-based DataRows
- {{% jira 3051 %}} Replace PropertyVisitor with ClassDescriptor property collections
- {{% jira 3054 %}} Remove ObjRelationship.isReadOnly()
- {{% jira 3056 %}} Switch DataMap queries to the new query parser
- {{% jira 3057 %}} Improve parameter binding in the query parser
- {{% jira 3066 %}} Modeler: update SQLTemplate editor UI

#### Bug Fixes

- {{% jira 2779 %}} "Nullify" delete rules is not processed with n:m and inheritance hierarchy
- {{% jira 2832 %}} SelectActionIT is failing on GitHub Actions
- {{% jira 2911 %}} Vertical Inheritance: Column Select Sometimes Null With Vertically Inherited Entity
- {{% jira 2996 %}} Javadocs are missing from the central artifacts
- {{% jira 2999 %}} Modeler: A restricted method in java.lang.System has been called
- {{% jira 3001 %}} Modeler: Auto-increment attribute is not picked up
- {{% jira 3002 %}} Modeler: NPE after clicking path chooser
- {{% jira 3003 %}} Modeler: NPE editing unmapped ObjAttribute
- {{% jira 3005 %}} ResultIterator.allRows() doesn't convert to DataObjects
- {{% jira 3006 %}} Can't match a "self" property of an entity with a compound PK
- {{% jira 3008 %}} Disjoint prefetch returns wrong results when the query matches on a "self" property
- {{% jira 3009 %}} Column select with CLOB attribute and distinct() fails
- {{% jira 3011 %}} PostgreSQL: use transactions on select with fetch size
- {{% jira 3018 %}} EJBQL: broken joins when selecting a vertically inherited entity
- {{% jira 3030 %}} Cayenne stack must be able to start without touching the DataSource
- {{% jira 3031 %}} Expression parameter names may conflict with function names
- {{% jira 3032 %}} ColumnSelect: an entity column over a to-many relationship filters out root rows with no related objects
- {{% jira 3033 %}} Selects with subqueries produce conflicting cache keys
- {{% jira 3044 %}} Paginated query with a joint to-many prefetch returns duplicate ids and unresolved Integer elements
- {{% jira 3045 %}} Race condition: ClassCastException resolving a to-one fault concurrently on a shared DataContext
- {{% jira 3046 %}} Refreshing an object from a snapshot discards to-ones, causing fault resolution on a shared DataContext
- {{% jira 3052 %}} Modeler: inconsistent classloading in dbimport
- {{% jira 3053 %}} Untyped #bind of java.time values fails with "conversion to VARBINARY is not supported"
