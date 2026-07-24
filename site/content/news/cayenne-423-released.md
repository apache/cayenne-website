+++
title = "Cayenne 4.2.3 Released"
date = 2025-11-19 10:00:00+03:00
+++

 
This is a maintenance release of Cayenne 4.2. This version fixes several important issues and recomended for the upgrade.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* [CAY-2884](https://issues.apache.org/jira/browse/CAY-2884) Upgrade gradle to 8.13
* [CAY-2893](https://issues.apache.org/jira/browse/CAY-2893) Update velocity-engine-core dependency
* [CAY-2897](https://issues.apache.org/jira/browse/CAY-2897) Add no-op default implementations to the GraphChangeHandler interface
* [CAY-2905](https://issues.apache.org/jira/browse/CAY-2905) Upgrade Gradle to 8.14

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2836](https://issues.apache.org/jira/browse/CAY-2836) ObjectSelect.selectCount() throws if a query contains ordering
* [CAY-2863](https://issues.apache.org/jira/browse/CAY-2863) DbEntity qualifiers are no longer applied to JOIN conditions
* [CAY-2883](https://issues.apache.org/jira/browse/CAY-2883) License and notice templates are not processed by the Gradle build
* [CAY-2885](https://issues.apache.org/jira/browse/CAY-2885) Modeler: DbImport fails to load DB schema view
* [CAY-2887](https://issues.apache.org/jira/browse/CAY-2887) Expressions: Incorrect serialization to string of numeric literals
* [CAY-2895](https://issues.apache.org/jira/browse/CAY-2895) Incorrect Lazy Pagination Comparison for BigInteger PK
* [CAY-2896](https://issues.apache.org/jira/browse/CAY-2896) Inserting two identical objects into two datamaps stores both objects in the last used datamap
* [CAY-2898](https://issues.apache.org/jira/browse/CAY-2898) Crypto: NPE in a ColumnQuery
* [CAY-2899](https://issues.apache.org/jira/browse/CAY-2899) CommitLog: missing lifecycle-induced changes in `excludeFromTransaction` mode
* [CAY-2900](https://issues.apache.org/jira/browse/CAY-2900) Meaningful generated PKs could lead to the ClassCastException
* [CAY-2901](https://issues.apache.org/jira/browse/CAY-2901) Loosing comments on the existing ObjAttribute after DB import
* [CAY-2904](https://issues.apache.org/jira/browse/CAY-2904) Disjoint prefetch returns incorrect data
