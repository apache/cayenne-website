---
title: Cayenne 4.0.2 Released
date: 2019-10-14T12:00:00+03:00
--- 
This is a maintenance release with some minor changes in Modeler and a few bug fixes.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2519 %}} Use NoopEventManager if SERVER_CONTEXTS_SYNC_PROPERTY is false
* {{% jira 2570 %}} Use MySQL adapter for latest versions of MariaDB

{{% gap %}}

#### Bug Fixes:

* {{% jira 2417 %}} Modeler: wrong title in attribute context menu
* {{% jira 2550 %}} Modeler: ObjAttribute inspector modifies wrong columns in attribute table
* {{% jira 2553 %}} Wrong disjoint prefetch query qualifier
* {{% jira 2559 %}} Modeler: Warning dialog shows wrong information after changing target entity in dbRelationship
* {{% jira 2573 %}} DI field injection is triggered when creating sql Driver
* {{% jira 2582 %}} Double insert of manyToMany relationship mapped to Set
* {{% jira 2584 %}} Crypto: can't use ColumnSelect with encrypted columns
* {{% jira 2586 %}} Char can't be materialized to EnumType in some cases
* {{% jira 2616 %}} Modeler: Wrong handling of path with spaces
* {{% jira 2624 %}} SelectQuery "having" qualifier is not considered when calculating cache key
* {{% jira 2627 %}} Modeler: ObjRelationship creation dialog ignores delete rule
* {{% jira 2628 %}} dbimport: unable to add several relationships to existing entity
