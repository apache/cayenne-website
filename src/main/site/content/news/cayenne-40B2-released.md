---
title: Cayenne 4.0 Beta 2 Released
date: 2017-10-06T17:38:42+03:00
url: /2017/10/cayenne-40B2-released.html
--- 

Apache Cayenne team is glad to announce a beta 2 release of Cayenne 4.0. 
While API is frozen it includes only bug fixes and documentation updates.

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* {{% jira 2319 %}} Modeler: Embeddable > Attributes. Undo does not cancel pasted objects
* {{% jira 2321 %}} cdbimport: Reverse relationship is not created after adding and rev engineeering new db table
* {{% jira 2323 %}} Modeler: Graph. No warning while saving the image with existing name
* {{% jira 2331 %}} cgen: broken templates for data map
* {{% jira 2347 %}} cdbimport: can't get all relationships on the first pass
* {{% jira 2349 %}} Cache issue: 'SelectQuery' with prefetches loses relationships
* {{% jira 2350 %}} Expression: NotIn with empty collection returns empty result
* {{% jira 2353 %}} Broken paginated column select with only one entity in the result
* {{% jira 2354 %}} DbGenerator.runGenerator must commit its connection
* {{% jira 2356 %}} EJBQL: Incorrect COUNT() on outer joined table
* {{% jira 2357 %}} Generic select queries silently convert result to nulls if no PK column found
* {{% jira 2358 %}} NPE when callbacks invoked on null objects
* {{% jira 2359 %}} EJBQL: db path in not supported in ORDER BY
* {{% jira 2362 %}} ColumnSelect: unable to use Property without type
* {{% jira 2363 %}} ColumnSelect: unable to use from nested context
* {{% jira 2366 %}} Incorrect EJBQL COUNT translation 