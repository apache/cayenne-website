---
title: Cayenne 4.2.1 Released
date: 2024-06-20T12:00:00+03:00
--- 
This is a maintenance release of Cayenne 4.2. This version brings support for JDK 21 and 22, and a few bug fixes.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* {{% jira 2849 %}} Switch documentation to `hugo-asciidoctorj-extension`
* {{% jira 2852 %}} Update velocity-engine-core dependency
* {{% jira 2856 %}} Upgrade `Gradle` to 8.8
* {{% jira 2857 %}} Java 22 support

{{% gap %}}

#### Bug Fixes:

* {{% jira 2806 %}} Incorrect processing of unicode escape syntax in JSON
* {{% jira 2809 %}} Cayenne Expression grammar doesn't allow custom function as an argument for string functions
* {{% jira 2810 %}} Can't use custom operator expression with aggregate functions
* {{% jira 2813 %}} Regression: `Constants.CI_PROPERTY` flag is no longer working for `MySQL`
* {{% jira 2815 %}} Incorrect translation of aliased expression
* {{% jira 2838 %}} Vertical Inheritance: Problem setting db attribute to `null` via flattened path
* {{% jira 2840 %}} Vertical Inheritance: Missing subclass attributes with joint prefetch
* {{% jira 2841 %}} Multi column `ColumnSelect` with `SHARED_CACHE` fails after 1st select
* {{% jira 2844 %}} Joint prefetch doesn't use ObjEntity qualifier
* {{% jira 2848 %}} Vertical Inheritance: Updating one-to-many with inverse nullifies other columns
* {{% jira 2850 %}} Query using Clob comparison with empty String fails
* {{% jira 2851 %}} Replace Existing OneToOne From New Object
* {{% jira 2853 %}} Incorrect deletion of entities from flattened attributes
