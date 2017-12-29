---
title: Cayenne 3.1.2 Released
date: 2017-11-20T12:00:00+03:00
url: /2017/11/cayenne-312-released.html
--- 
This is a maintenance release with a few bug fixes.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

* {{% jira 1969 %}} Malformed EJBQL Yields NPE
* {{% jira 2084 %}} ObjectIdQuery - no cache access polymorphism
* {{% jira 2101 %}} DataContext.currentSnapshot() doesn't set snapshot entity name
* {{% jira 2137 %}} When generating SQL from EJBQL, use "AND" to separate multiple join conditions
* {{% jira 2175 %}} AliasName used in EJBQLQuery is not working if it contains mixed case
* {{% jira 2226 %}} PK generation for Frontbase: PK cache size must be ignored
* {{% jira 2276 %}} PrePersist listener registered as PostPersist in LifecycleCallbackRegistry.addListener(Class<?>, LifecycleListener)