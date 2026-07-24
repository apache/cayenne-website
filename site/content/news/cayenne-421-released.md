+++
title = "Cayenne 4.2.1 Released"
date = 2024-06-20 12:00:00+03:00
+++

 
This is a maintenance release of Cayenne 4.2. This version brings support for JDK 21 and 22, and a few bug fixes.
It can be downloaded from [here](/download/).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

* [CAY-2849](https://issues.apache.org/jira/browse/CAY-2849) Switch documentation to `hugo-asciidoctorj-extension`
* [CAY-2852](https://issues.apache.org/jira/browse/CAY-2852) Update velocity-engine-core dependency
* [CAY-2856](https://issues.apache.org/jira/browse/CAY-2856) Upgrade `Gradle` to 8.8
* [CAY-2857](https://issues.apache.org/jira/browse/CAY-2857) Java 22 support

<div class="gap" style="margin-bottom: 3rem;"></div>

#### Bug Fixes:

* [CAY-2806](https://issues.apache.org/jira/browse/CAY-2806) Incorrect processing of unicode escape syntax in JSON
* [CAY-2809](https://issues.apache.org/jira/browse/CAY-2809) Cayenne Expression grammar doesn't allow custom function as an argument for string functions
* [CAY-2810](https://issues.apache.org/jira/browse/CAY-2810) Can't use custom operator expression with aggregate functions
* [CAY-2813](https://issues.apache.org/jira/browse/CAY-2813) Regression: `Constants.CI_PROPERTY` flag is no longer working for `MySQL`
* [CAY-2815](https://issues.apache.org/jira/browse/CAY-2815) Incorrect translation of aliased expression
* [CAY-2838](https://issues.apache.org/jira/browse/CAY-2838) Vertical Inheritance: Problem setting db attribute to `null` via flattened path
* [CAY-2840](https://issues.apache.org/jira/browse/CAY-2840) Vertical Inheritance: Missing subclass attributes with joint prefetch
* [CAY-2841](https://issues.apache.org/jira/browse/CAY-2841) Multi column `ColumnSelect` with `SHARED_CACHE` fails after 1st select
* [CAY-2844](https://issues.apache.org/jira/browse/CAY-2844) Joint prefetch doesn't use ObjEntity qualifier
* [CAY-2848](https://issues.apache.org/jira/browse/CAY-2848) Vertical Inheritance: Updating one-to-many with inverse nullifies other columns
* [CAY-2850](https://issues.apache.org/jira/browse/CAY-2850) Query using Clob comparison with empty String fails
* [CAY-2851](https://issues.apache.org/jira/browse/CAY-2851) Replace Existing OneToOne From New Object
* [CAY-2853](https://issues.apache.org/jira/browse/CAY-2853) Incorrect deletion of entities from flattened attributes
