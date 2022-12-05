---
title: Cayenne 4.2 Release Candidate 2 Released
date: 2022-12-05T15:00:00+03:00
--- 

Apache Cayenne team is glad to announce second release candidate of _Cayenne 4.2_. 
Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Changes/New Features:

- {{% jira 2741 %}} Cleanup TransactionDescriptor and deprecate DefaultTransactionDescriptor
- {{% jira 2743 %}} Deprecate ROP
- {{% jira 2749 %}} Deprecate object clustering transports
- {{% jira 2750 %}} Deprecate web module
- {{% jira 2775 %}} Change ObjectStyle maven repository URL
- {{% jira 2776 %}} Upgrade Gradle to 7.6

{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2732 %}} Exception when creating ObjEntity from a DbEntity
- {{% jira 2755 %}} Modeler: Entities are not sorted by name in the class generation view
- {{% jira 2762 %}} Modeler: Difference in toolbars colors on OSX
- {{% jira 2763 %}} Split expressions do not work with flattened relationships
- {{% jira 2764 %}} Split expressions do not work with DB relationships
- {{% jira 2765 %}} dbimport: check excluded catalogs and schemas for the SQLServer
- {{% jira 2769 %}} Modeler: 'rootPath' attribute is missing
- {{% jira 2777 %}} Reverse relationship is not set with single table inheritance
- {{% jira 2782 %}} Modeler: save button becomes active on DataMap comment field focus
