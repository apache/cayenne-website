---
title: Cayenne 4.2 Beta 1 Released
date: 2021-12-06T15:00:00+03:00
--- 

Apache Cayenne team is glad to announce the first beta release of Cayenne 4.2.
The API is frozen now, and it is safe to try it out. From now on the 4.2 branch will concentrate on bug fixes.

Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Changes/New Features:

- {{% jira 2399 %}} Convert string values to Enum in qualifiers
- {{% jira 2637 %}} Allow forcing a custom Connection for a transaction
- {{% jira 2718 %}} Use testcontainers for the integration tests

{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2092 %}} Exception for query that uses pagination and sorting on to-many
- {{% jira 2694 %}} Precision issues with reverse / forward engineering of time types on MySQL
- {{% jira 2699 %}} Modeler: dbimport schema view not working on SQLite
- {{% jira 2702 %}} Modeler: Callbacks table has too small default width
- {{% jira 2703 %}} Modeler: incorrect active tab style on the MacOS version
- {{% jira 2704 %}} Vertical inheritance with Embeddedables looses ObjAttribute information
- {{% jira 2705 %}} Performance of callback annotation processing
- {{% jira 2706 %}} Modeler: object attribute dialog doesn't properly initialized for the embeddable type
- {{% jira 2707 %}} Modeler: code generation is broken in the DataDomain tab
- {{% jira 2708 %}} Gradle build plugin fails on Java 16
- {{% jira 2709 %}} Modeler: Cgen fails to generate code for a new unsaved project with all settings set to default
- {{% jira 2710 %}} Modeler: modeler throws IllegalArgumentsException when root and rel paths have different root
- {{% jira 2712 %}} Shouldn't run batch inserts with generated keys if there is reflexive dependency
- {{% jira 2713 %}} ConcurrentModificationException when Inserting
- {{% jira 2714 %}} Offset value is not copied to column select metadata
- {{% jira 2716 %}} Wrong operator for the bitwise NOT
- {{% jira 2720 %}} ConcurrentModificationException in the TypeAwareSQLTreeProcessor
- {{% jira 2721 %}} Platform builds of CayenneModeler don't work with Java 17
- {{% jira 2723 %}} Phantom update of a to-dependent-pk relationship
