---
title: Cayenne 4.2 Milestone 2 Released
date: 2020-10-12T12:00:00+03:00
--- 

Apache Cayenne team is glad to announce next milestone release of Cayenne 4.2. 

This is a development release that contains some minor fixes and new features. 

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>


#### Changes/New Features:

- {{% jira 2338 %}} Support comments in cgen and default templates
- {{% jira 2656 %}} Modeler: option to download required jars directly from maven central
- {{% jira 2657 %}} SelectQueryDescriptor should use ObjectSelect
- {{% jira 2659 %}} Use new SQLBuilder utility to generate SQL for batch queries
- {{% jira 2662 %}} Use custom interface for SQL tree processor instead of a Function<Node, Node>
- {{% jira 2663 %}} Support for custom SQL operators
- {{% jira 2664 %}} Add methods to EntityProperty to allow direct usage of primary key values
- {{% jira 2665 %}} Support for widespread SQL types that falls into Jdbc type OTHER
- {{% jira 2668 %}} Experimental graph-based db operations sorter
- {{% jira 2670 %}} CommitLog does not include FKs for deleted objects with one-way relationships
- {{% jira 2673 %}} Support ordering by aggregate functions
- {{% jira 2674 %}} Support in-memory evaluation of aggregate functions

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- {{% jira 2591 %}} Modeler: project becomes dirty after click on dbImport or cgen tab
- {{% jira 2671 %}} QualifierTranslator fails to translate expressions with compound PKs/FKs
- {{% jira 2675 %}} A one-to-one relationship with meaningful PK can be nullified in the nested context
- {{% jira 2676 %}} Degradation: Custom class generation templates are not working anymore
- {{% jira 2679 %}} Unstable ordering of relationships in the .map.xml file
- {{% jira 2681 %}} Modeler: All selected checkboxes cause project to become dirty at initialization
- {{% jira 2682 %}} Vertical Inheritance: DB-generated PK doesn't propagate from the root to children
