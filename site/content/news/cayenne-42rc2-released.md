+++
title = "Cayenne 4.2 Release Candidate 2 Released"
date = 2022-12-05 12:00:00+03:00
+++

 

Apache Cayenne team is glad to announce second release candidate of _Cayenne 4.2_. 
Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features:

- [CAY-2741](https://issues.apache.org/jira/browse/CAY-2741) Cleanup TransactionDescriptor and deprecate DefaultTransactionDescriptor
- [CAY-2743](https://issues.apache.org/jira/browse/CAY-2743) Deprecate ROP
- [CAY-2749](https://issues.apache.org/jira/browse/CAY-2749) Deprecate object clustering transports
- [CAY-2750](https://issues.apache.org/jira/browse/CAY-2750) Deprecate web module
- [CAY-2775](https://issues.apache.org/jira/browse/CAY-2775) Change ObjectStyle maven repository URL
- [CAY-2776](https://issues.apache.org/jira/browse/CAY-2776) Upgrade Gradle to 7.6

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2732](https://issues.apache.org/jira/browse/CAY-2732) Exception when creating ObjEntity from a DbEntity
- [CAY-2755](https://issues.apache.org/jira/browse/CAY-2755) Modeler: Entities are not sorted by name in the class generation view
- [CAY-2762](https://issues.apache.org/jira/browse/CAY-2762) Modeler: Difference in toolbars colors on OSX
- [CAY-2763](https://issues.apache.org/jira/browse/CAY-2763) Split expressions do not work with flattened relationships
- [CAY-2764](https://issues.apache.org/jira/browse/CAY-2764) Split expressions do not work with DB relationships
- [CAY-2765](https://issues.apache.org/jira/browse/CAY-2765) dbimport: check excluded catalogs and schemas for the SQLServer
- [CAY-2769](https://issues.apache.org/jira/browse/CAY-2769) Modeler: 'rootPath' attribute is missing
- [CAY-2777](https://issues.apache.org/jira/browse/CAY-2777) Reverse relationship is not set with single table inheritance
- [CAY-2782](https://issues.apache.org/jira/browse/CAY-2782) Modeler: save button becomes active on DataMap comment field focus
