---
title: Cayenne 4.1 Release Candidate 2 Released
date: 2019-10-29T14:00:00+03:00
--- 

Apache Cayenne team is glad to announce release candidate 2 of _Cayenne 4.1_. 
Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2627 %}} Modeler: ObjRelationship creation dialog ignores delete rule
- {{% jira 2628 %}} dbimport: unable to add several relationships to existing entity
- {{% jira 2631 %}} Can no longer use "byte[]" as root of scalar SQLSelect
- {{% jira 2632 %}} Modeler: issue saving cgen path for maven project
- {{% jira 2633 %}} Modeler: attribute sorting logic in cgen can corrupt model
- {{% jira 2634 %}} Minor inconsistencies in Modeler "DB Import"
- {{% jira 2635 %}} Lambda expressions break ROP serialization