---
title: Cayenne 4.2.3 Released
date: 2025-11-19T10:00:00+03:00
--- 
This is a maintenance release of Cayenne 4.2. This version fixes several important issues and recomended for the upgrade.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2884 %}} Upgrade gradle to 8.13
* {{% jira 2893 %}} Update velocity-engine-core dependency
* {{% jira 2897 %}} Add no-op default implementations to the GraphChangeHandler interface
* {{% jira 2905 %}} Upgrade Gradle to 8.14

{{% gap %}}

#### Bug Fixes:

* {{% jira 2836 %}} ObjectSelect.selectCount() throws if a query contains ordering
* {{% jira 2863 %}} DbEntity qualifiers are no longer applied to JOIN conditions
* {{% jira 2883 %}} License and notice templates are not processed by the Gradle build
* {{% jira 2885 %}} Modeler: DbImport fails to load DB schema view
* {{% jira 2887 %}} Expressions: Incorrect serialization to string of numeric literals
* {{% jira 2895 %}} Incorrect Lazy Pagination Comparison for BigInteger PK
* {{% jira 2896 %}} Inserting two identical objects into two datamaps stores both objects in the last used datamap
* {{% jira 2898 %}} Crypto: NPE in a ColumnQuery
* {{% jira 2899 %}} CommitLog: missing lifecycle-induced changes in `excludeFromTransaction` mode
* {{% jira 2900 %}} Meaningful generated PKs could lead to the ClassCastException
* {{% jira 2901 %}} Loosing comments on the existing ObjAttribute after DB import
* {{% jira 2904 %}} Disjoint prefetch returns incorrect data
