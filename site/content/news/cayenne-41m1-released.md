+++
title = "Cayenne 4.1 Milestone 1 Released"
date = 2017-10-14 12:00:00+03:00
+++

 

Apache Cayenne team is glad to announce the first milestone release of Cayenne 4.1. 
This is a development release that introduces a number of nice new major features:

- New field-based data objects (see [CAY-2330](https://issues.apache.org/jira/browse/CAY-2330)), 
  that are much faster to read and write, while significantly reducing the app memory footprint.
- Dependency-free Cayenne core. No more velocity or commons-collections compile dependencies. Only "slf4j-api" is required in the base config.
- New extensible project XML structure. In M1 we are using this to store comments for entities, attributes and relationships. 
  Future milestones will add storing configuration for cdbimport and cgen.

Cayenne can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- [CAY-2152](https://issues.apache.org/jira/browse/CAY-2152) Redesign project file upgrade system
- [CAY-2329](https://issues.apache.org/jira/browse/CAY-2329) Update project dependencies
- [CAY-2330](https://issues.apache.org/jira/browse/CAY-2330) Field based data objects
- [CAY-2335](https://issues.apache.org/jira/browse/CAY-2335) New XML loading/saving mechanics with support of plugable handlers
- [CAY-2336](https://issues.apache.org/jira/browse/CAY-2336) Support for comments in Modeler
- [CAY-2339](https://issues.apache.org/jira/browse/CAY-2339) Compatibility module to support old versions of projects at runtime
- [CAY-2344](https://issues.apache.org/jira/browse/CAY-2344) Modeler: Save ER-Graph and class diagram
- [CAY-2345](https://issues.apache.org/jira/browse/CAY-2345) Own template renderer as a replacement for Velocity
- [CAY-2346](https://issues.apache.org/jira/browse/CAY-2346) Field-based data object with Map-based storage fallback
- [CAY-2351](https://issues.apache.org/jira/browse/CAY-2351) Remove commons-collections usage completely

<div class="pb-2"><!-- gap 2rem --></div>


#### Bug Fixes:

- [CAY-2312](https://issues.apache.org/jira/browse/CAY-2312) Modeler: Undo does not work for checkboxes
- [CAY-2318](https://issues.apache.org/jira/browse/CAY-2318) Modeler: Query. Exception after Undo clicking
- [CAY-2319](https://issues.apache.org/jira/browse/CAY-2319) Modeler: Embeddable > Attributes. Undo does not cancel pasted objects
- [CAY-2321](https://issues.apache.org/jira/browse/CAY-2321) cdbimport: Reverse relationship is not created after adding and rev engineeering new db table
- [CAY-2323](https://issues.apache.org/jira/browse/CAY-2323) Modeler: Graph. No warning while saving the image with existing name
- [CAY-2331](https://issues.apache.org/jira/browse/CAY-2331) cgen: broken templates for data map
- [CAY-2347](https://issues.apache.org/jira/browse/CAY-2347) cdbimport: can't get all relationships on the first pass
- [CAY-2349](https://issues.apache.org/jira/browse/CAY-2349) Cache issue: 'SelectQuery' with prefetches loses relationships
- [CAY-2350](https://issues.apache.org/jira/browse/CAY-2350) Expression: NotIn with empty collection returns empty result
- [CAY-2353](https://issues.apache.org/jira/browse/CAY-2353) Broken paginated column select with only one entity in the result
- [CAY-2354](https://issues.apache.org/jira/browse/CAY-2354) DbGenerator.runGenerator must commit its connection
- [CAY-2356](https://issues.apache.org/jira/browse/CAY-2356) EJBQL: Incorrect COUNT() on outer joined table
- [CAY-2357](https://issues.apache.org/jira/browse/CAY-2357) Generic select queries silently convert result to nulls if no PK column found
- [CAY-2358](https://issues.apache.org/jira/browse/CAY-2358) NPE when callbacks invoked on null objects
- [CAY-2359](https://issues.apache.org/jira/browse/CAY-2359) EJBQL: db path in not supported in ORDER BY
- [CAY-2361](https://issues.apache.org/jira/browse/CAY-2361) PostgreSQL DbGenerator issues
- [CAY-2362](https://issues.apache.org/jira/browse/CAY-2362) ColumnSelect: unable to use Property without type
- [CAY-2363](https://issues.apache.org/jira/browse/CAY-2363) ColumnSelect: unable to use from nested context
- [CAY-2364](https://issues.apache.org/jira/browse/CAY-2364) Wrong logging in SQLTemplate
- [CAY-2365](https://issues.apache.org/jira/browse/CAY-2365) SQLExec query tries to convert (unexpected) result set into objects
- [CAY-2366](https://issues.apache.org/jira/browse/CAY-2366) Incorrect EJBQL COUNT translation
- [CAY-2367](https://issues.apache.org/jira/browse/CAY-2367) ClassCastException reading object with an attribute of type 'char'
- [CAY-2368](https://issues.apache.org/jira/browse/CAY-2368) ColumnSelect: Property.self() translates into wrong SQL code
