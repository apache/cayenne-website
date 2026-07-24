+++
title = "Cayenne 4.1.1 Released"
date = 2021-12-24 12:00:00+03:00
+++

 
This is a maintenance release adds support for JDK 17 in Modeler and a few bug fixes.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* [CAY-2725](https://issues.apache.org/jira/browse/CAY-2725) Upgrade Gradle to 7.3

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2670](https://issues.apache.org/jira/browse/CAY-2670) CommitLog does not include FKs for deleted objects with one-way relationships
* [CAY-2676](https://issues.apache.org/jira/browse/CAY-2676) Degradation: Custom class generation templates are not working anymore
* [CAY-2677](https://issues.apache.org/jira/browse/CAY-2677) Modeler: Custom Class Generation Templates for Embeddables and DataMaps
* [CAY-2678](https://issues.apache.org/jira/browse/CAY-2678) Inheritance warnings caused by unnecessary MappingCache creations during initialization
* [CAY-2679](https://issues.apache.org/jira/browse/CAY-2679) Unstable ordering of relationships in the .map.xml file
* [CAY-2681](https://issues.apache.org/jira/browse/CAY-2681) Modeler: All selected checkboxes cause project to become dirty at initialization
* [CAY-2690](https://issues.apache.org/jira/browse/CAY-2690) dbimport skips length changes for BINARY and VARBINARY columns
* [CAY-2691](https://issues.apache.org/jira/browse/CAY-2691) MySQL driver 8.0.x stores LocalDateTime differently than 5.1.x
* [CAY-2697](https://issues.apache.org/jira/browse/CAY-2697) Read-only cgen template creates mutator methods for to-many relationships
* [CAY-2698](https://issues.apache.org/jira/browse/CAY-2698) EventSubject.getSubject() is not thread safe
* [CAY-2702](https://issues.apache.org/jira/browse/CAY-2702) Modeler: Callbacks table has too small default width
* [CAY-2721](https://issues.apache.org/jira/browse/CAY-2721) Platform builds of CayenneModeler don't work with Java 17
* [CAY-2724](https://issues.apache.org/jira/browse/CAY-2724) Duplicating relationship after editing its name

