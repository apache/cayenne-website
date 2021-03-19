---
title: Cayenne 4.2 Milestone 3 Released
date: 2021-03-19T18:00:00+03:00
--- 

Apache Cayenne team is glad to announce next milestone release of Cayenne 4.2. 

This is a development release that contains some minor fixes and new features. 

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- {{% jira 2587 %}} SQLServer Limit Offset translation
- {{% jira 2677 %}} Custom Class Generation Templates for Embeddables and DataMaps
- {{% jira 2689 %}} ServerRuntime API: missing some variants of the performInTransaction() method
- {{% jira 2692 %}} Add entity lifecycle callbacks via annotated methods

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- {{% jira 2658 %}} DataChannelMetaData is null during cgen execution
- {{% jira 2661 %}} NPE on DB Import screen
- {{% jira 2678 %}} Inheritance warnings caused by unnecessary MappingCache creations during initialization
- {{% jira 2683 %}} Don't use DISTINCT for joins on to-one related tables
- {{% jira 2685 %}} JsonType should use the actual JDBC type, not OTHER
- {{% jira 2686 %}} SQL translator incorrectly quotes fully qualified tables' names
- {{% jira 2687 %}} Modeler Migrate Repeatedly Asks to Set Column Type for MySQL
- {{% jira 2690 %}} dbimport skips length changes for BINARY and VARBINARY columns
- {{% jira 2691 %}} MySQL driver 8.0.x stores LocalDateTime differently than 5.1.x
- {{% jira 2693 %}} Abstract subentities do not have rows materialized correctly
- {{% jira 2694 %}} Precision issues with reverse / forward engineering of time types on MySQL
- {{% jira 2695 %}} Reverse engineering on SQLite fails due to feature not being supported
- {{% jira 2698 %}} EventSubject.getSubject() is not thread safe
