---
title: Cayenne 4.2.2 Released
date: 2025-03-24T10:00:00+03:00
--- 
This is a maintenance release of Cayenne 4.2. This version fixes several important issues and recomended for the upgrade.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2867 %}} Tweak GraphBasedDbRowOpSorter logic to allow related updates
* {{% jira 2873 %}} Change Orderings.orderedList() to accept a Collection rather than a List

{{% gap %}}

#### Bug Fixes:

* {{% jira 2866 %}} DefaultDataDomainFlushAction breaks on circular relationship update
* {{% jira 2868 %}} Regression: DefaultDbRowOpSorter shouldn't sort update operations
* {{% jira 2871 %}} QualifierTranslator breaks on a relationship with a compound FK
* {{% jira 2872 %}} CayenneModeler "Documentation" link is broken
* {{% jira 2876 %}} Memory leak in the ObjectStore
* {{% jira 2879 %}} Negative number for non parameterized ObjectSelect query not processed correctly

