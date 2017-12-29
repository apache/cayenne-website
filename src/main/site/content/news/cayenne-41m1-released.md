---
title: Cayenne 4.1 Milestone 1 Released
date: 2017-10-14T12:00:00+03:00
url: /2017/10/cayenne-41m1-released.html
--- 

Apache Cayenne team is glad to announce the first milestone release of Cayenne 4.1. 
This is a development release that introduces a number of nice new major features:

- New field-based data objects (see {{% jira 2330 %}}), 
  that are much faster to read and write, while significantly reducing the app memory footprint.
- Dependency-free Cayenne core. No more velocity or commons-collections compile dependencies. Only "slf4j-api" is required in the base config.
- New extensible project XML structure. In M1 we are using this to store comments for entities, attributes and relationships. 
  Future milestones will add storing configuration for cdbimport and cgen.

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- {{% jira 2152 %}} Redesign project file upgrade system
- {{% jira 2329 %}} Update project dependencies
- {{% jira 2330 %}} Field based data objects
- {{% jira 2335 %}} New XML loading/saving mechanics with support of plugable handlers
- {{% jira 2336 %}} Support for comments in Modeler
- {{% jira 2339 %}} Compatibility module to support old versions of projects at runtime
- {{% jira 2344 %}} Modeler: Save ER-Graph and class diagram
- {{% jira 2345 %}} Own template renderer as a replacement for Velocity
- {{% jira 2346 %}} Field-based data object with Map-based storage fallback
- {{% jira 2351 %}} Remove commons-collections usage completely

<div class="pb-2"><!-- gap 2rem --></div>


#### Bug Fixes:

- {{% jira 2312 %}} Modeler: Undo does not work for checkboxes
- {{% jira 2318 %}} Modeler: Query. Exception after Undo clicking
- {{% jira 2319 %}} Modeler: Embeddable > Attributes. Undo does not cancel pasted objects
- {{% jira 2321 %}} cdbimport: Reverse relationship is not created after adding and rev engineeering new db table
- {{% jira 2323 %}} Modeler: Graph. No warning while saving the image with existing name
- {{% jira 2331 %}} cgen: broken templates for data map
- {{% jira 2347 %}} cdbimport: can't get all relationships on the first pass
- {{% jira 2349 %}} Cache issue: 'SelectQuery' with prefetches loses relationships
- {{% jira 2350 %}} Expression: NotIn with empty collection returns empty result
- {{% jira 2353 %}} Broken paginated column select with only one entity in the result
- {{% jira 2354 %}} DbGenerator.runGenerator must commit its connection
- {{% jira 2356 %}} EJBQL: Incorrect COUNT() on outer joined table
- {{% jira 2357 %}} Generic select queries silently convert result to nulls if no PK column found
- {{% jira 2358 %}} NPE when callbacks invoked on null objects
- {{% jira 2359 %}} EJBQL: db path in not supported in ORDER BY
- {{% jira 2361 %}} PostgreSQL DbGenerator issues
- {{% jira 2362 %}} ColumnSelect: unable to use Property without type
- {{% jira 2363 %}} ColumnSelect: unable to use from nested context
- {{% jira 2364 %}} Wrong logging in SQLTemplate
- {{% jira 2365 %}} SQLExec query tries to convert (unexpected) result set into objects
- {{% jira 2366 %}} Incorrect EJBQL COUNT translation
- {{% jira 2367 %}} ClassCastException reading object with an attribute of type 'char'
- {{% jira 2368 %}} ColumnSelect: Property.self() translates into wrong SQL code