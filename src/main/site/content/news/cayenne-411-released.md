---
title: Cayenne 4.1.1 Released
date: 2021-12-24T12:00:00+03:00
--- 
This is a maintenance release adds support for JDK 17 in Modeler and a few bug fixes.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2725 %}} Upgrade Gradle to 7.3

{{% gap %}}

#### Bug Fixes:

* {{% jira 2670 %}} CommitLog does not include FKs for deleted objects with one-way relationships
* {{% jira 2676 %}} Degradation: Custom class generation templates are not working anymore
* {{% jira 2677 %}} Modeler: Custom Class Generation Templates for Embeddables and DataMaps
* {{% jira 2678 %}} Inheritance warnings caused by unnecessary MappingCache creations during initialization
* {{% jira 2679 %}} Unstable ordering of relationships in the .map.xml file
* {{% jira 2681 %}} Modeler: All selected checkboxes cause project to become dirty at initialization
* {{% jira 2690 %}} dbimport skips length changes for BINARY and VARBINARY columns
* {{% jira 2691 %}} MySQL driver 8.0.x stores LocalDateTime differently than 5.1.x
* {{% jira 2697 %}} Read-only cgen template creates mutator methods for to-many relationships
* {{% jira 2698 %}} EventSubject.getSubject() is not thread safe
* {{% jira 2702 %}} Modeler: Callbacks table has too small default width
* {{% jira 2721 %}} Platform builds of CayenneModeler don't work with Java 17
* {{% jira 2724 %}} Duplicating relationship after editing its name

