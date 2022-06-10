---
title: Cayenne 4.2 Release Candidate 1 Released
date: 2022-06-10T15:00:00+03:00
--- 

Apache Cayenne team is glad to announce release candidate of _Cayenne 4.2_. 
Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Changes/New Features:

- {{% jira 2711 %}} JDK 17 compatibility
- {{% jira 2728 %}} Add ExtendedType to generate user-friendly exceptions for internally used values


{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2630 %}} Prefetched relationships not preserving pending changes
- {{% jira 2697 %}} Read-only cgen template creates mutator methods for to-many relationships
- {{% jira 2724 %}} Duplicating relationship after editing its name
- {{% jira 2727 %}} Modeler: cgen destDir Unix platform path separator
- {{% jira 2729 %}} Unable to use custom templates from a folder at upper level then datamap
- {{% jira 2730 %}} Duplicating lines in a cgen config saved to datamap.xml
- {{% jira 2731 %}} Exception when setting a CLOB on H2 v2.0.202
- {{% jira 2733 %}} Modeler can't use custom templates set in a datamap
- {{% jira 2734 %}} Improve support for the DECIMAL type
- {{% jira 2736 %}} Can't use function names as a path in a string-based expression
