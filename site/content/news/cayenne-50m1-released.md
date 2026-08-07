+++
title = "Cayenne 5.0 Milestone 1 Released"
date = 2024-09-09 12:00:00+03:00
+++
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements. See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to you under the Apache License, Version
  2.0 (the "License"); you may not use this file except in compliance
  with the License. You may obtain a copy of the License at
 
  https://www.apache.org/licenses/LICENSE-2.0 Unless required by
  applicable law or agreed to in writing, software distributed under the
  License is distributed on an AS IS BASIS, WITHOUT WARRANTIES OR
  CONDITIONS OF ANY KIND, either express or implied. See the License for
  the specific language governing permissions and limitations under the
  License.
-->



Apache Cayenne development team is glad to announce the first milestone of a new major version of Cayenne.
The latest version can be downloaded from [here](/download/).

### Incompatible changes

Apache Cayenne 5.0-M1 removes support for a multi-layered stack, so no more Cayenne RoP and all the related client parts.
Moreover, this release renames every part that contains `server` in its name, including the main library. 
So from now on, this is how dropping Cayenne into your project would look like:

```xml
<dependency>
    <groupId>org.apache.cayenne</groupId>
    <artifactId>cayenne</artifactId>
    <version>5.0-M1</version>
</dependency>
```

And starting runtime:
```java
CayenneRuntime runtime = CayenneRuntime.builder()
                .addConfig("cayenne-project.xml")
                .build();
```

For more details about incompatible changes and deprecations, please consult [upgrade notes](https://raw.githubusercontent.com/apache/cayenne/5.0-M1/UPGRADE.txt)

### Notable new features

#### Java Version

The minimum required Java version is now 11, Java 8 is no longer supported.

#### New Dev Versioning Scheme

From now on a snapshot version of Cayenne is a constant value, so the dev version of 5.0 will always be 5.0-SNAPSHOT. So you can always stay at the bleeding edge of development if needed.

#### New Class Generation UI:

The new Class Generation UI in the Cayenne Modeler simplifies configuration, allows multiple `cgen` setups per project, 
and includes a template editor.

<p style="text-align: center;">
    <img class="img-fluid" style="max-width: 70%;" src="/img/cayenne-5.0-m1-cgen.png" alt="Cayenne Modeler 5.0-M1 Class Generation"/>
</p>

#### Better support for the `(not)exists` queries:

In most cases, you don’t need to deal with a subquery for `(not)exists` queries, as it is now directly supported by the Expression API. 
That includes `Expression`, expression parser, and Property API.

```java
long count = ObjectSelect.query(Artist.class)
        .where(Artist.PAINTING_ARRAY.dot(Painting.PAINTING_TITLE).like("painting%").exists())
        .selectCount(context);
```

#### Improved SQL support:

`ANY` and `ALL` subqueries are now supported, as well as `case-when` expressions.

**NOTE**: `case-when` is a bit experimental, and implementation could change.

<div class="pb-3"><!-- gap 2rem --></div>

### A full list of changes in this release

<div class="pb-2"><!-- gap 2rem --></div>

#### Changes/New Features:

- [CAY-2378](https://issues.apache.org/jira/browse/CAY-2378) Switch usage of SelectQuery to ObjectSelect internally
- [CAY-2498](https://issues.apache.org/jira/browse/CAY-2498) Rename packages to prevent crossing package names
- [CAY-2597](https://issues.apache.org/jira/browse/CAY-2597) `case-when` implementation
- [CAY-2715](https://issues.apache.org/jira/browse/CAY-2715) Support `ANY` and `ALL` expressions for subqueries
- [CAY-2737](https://issues.apache.org/jira/browse/CAY-2737) Cayenne 5.0: cleanup deprecated code
- [CAY-2741](https://issues.apache.org/jira/browse/CAY-2741) Cleanup TransactionDescriptor and deprecate DefaultTransactionDescriptor
- [CAY-2742](https://issues.apache.org/jira/browse/CAY-2742) Switch minimum required Java version to 11
- [CAY-2744](https://issues.apache.org/jira/browse/CAY-2744) Remove ROP support
- [CAY-2746](https://issues.apache.org/jira/browse/CAY-2746) Cleanup root pom.xml
- [CAY-2747](https://issues.apache.org/jira/browse/CAY-2747) Update project XML version to 11
- [CAY-2751](https://issues.apache.org/jira/browse/CAY-2751) Simplify DataNode configuration
- [CAY-2752](https://issues.apache.org/jira/browse/CAY-2752) Rename queryTemplate to dataMapTemplate in the cgen config
- [CAY-2753](https://issues.apache.org/jira/browse/CAY-2753) Remove VPP support in the ant task
- [CAY-2754](https://issues.apache.org/jira/browse/CAY-2754) Add `SELF` property to the cgen templates
- [CAY-2756](https://issues.apache.org/jira/browse/CAY-2756) Modeler: simplify cgen UI
- [CAY-2757](https://issues.apache.org/jira/browse/CAY-2757) Modeler: Create custom templates from defaults
- [CAY-2758](https://issues.apache.org/jira/browse/CAY-2758) Refactoring code for a extended TemplateType class
- [CAY-2759](https://issues.apache.org/jira/browse/CAY-2759) Add utility methods to the `SELF` property
- [CAY-2760](https://issues.apache.org/jira/browse/CAY-2760) ObjectContext.userProperties need a way to clear properties
- [CAY-2761](https://issues.apache.org/jira/browse/CAY-2761) Modeler: Editor for the cgen templates
- [CAY-2766](https://issues.apache.org/jira/browse/CAY-2766) Modeler: Improving the work with velocity templates for class generation
- [CAY-2767](https://issues.apache.org/jira/browse/CAY-2767) Modeler: upgrade deprecated code in custom components
- [CAY-2771](https://issues.apache.org/jira/browse/CAY-2771) Switch to GitHub actions
- [CAY-2772](https://issues.apache.org/jira/browse/CAY-2772) Bootique-style module "extenders" for smoother configuration
- [CAY-2773](https://issues.apache.org/jira/browse/CAY-2773) Switch master to "5.0"
- [CAY-2776](https://issues.apache.org/jira/browse/CAY-2776) Upgrade Gradle to 7.6
- [CAY-2780](https://issues.apache.org/jira/browse/CAY-2780) Modeler: Multiple configurations for classes generation
- [CAY-2781](https://issues.apache.org/jira/browse/CAY-2781) Enable 'Create PK properties' by default in the cgen configuration
- [CAY-2784](https://issues.apache.org/jira/browse/CAY-2784) Remove 'Use Java primitive types' option from dbimport
- [CAY-2785](https://issues.apache.org/jira/browse/CAY-2785) Modeler: improve folder selection for cgen
- [CAY-2787](https://issues.apache.org/jira/browse/CAY-2787) Modeler: Ability to sort DB Import rules
- [CAY-2788](https://issues.apache.org/jira/browse/CAY-2788) DbImport: Add fallback option for the batch attribute loader
- [CAY-2795](https://issues.apache.org/jira/browse/CAY-2795) Add unit tests for the Json type
- [CAY-2802](https://issues.apache.org/jira/browse/CAY-2802) Upgrade Gradle to 7.6.1
- [CAY-2803](https://issues.apache.org/jira/browse/CAY-2803) Test infrastructure: declarative custom DI modules in ServerCase
- [CAY-2805](https://issues.apache.org/jira/browse/CAY-2805) Stop calling exp parser internally
- [CAY-2807](https://issues.apache.org/jira/browse/CAY-2807) EntityProperty.inId(..) / ninId(..) - disambiguate method parameters
- [CAY-2814](https://issues.apache.org/jira/browse/CAY-2814) Select query iterator() and batchIterator() methods return incorrect results
- [CAY-2816](https://issues.apache.org/jira/browse/CAY-2816) (NOT) EXIST usability - provide simple expression syntax
- [CAY-2817](https://issues.apache.org/jira/browse/CAY-2817) Pagination flow refactoring
- [CAY-2818](https://issues.apache.org/jira/browse/CAY-2818) JDK 21 support
- [CAY-2819](https://issues.apache.org/jira/browse/CAY-2819) DataContext.performIteratedQuery() method should be unified with iterator() method
- [CAY-2820](https://issues.apache.org/jira/browse/CAY-2820) Remove `server` from the components naming
- [CAY-2821](https://issues.apache.org/jira/browse/CAY-2821) Change development versioning schema
- [CAY-2822](https://issues.apache.org/jira/browse/CAY-2822) Rename `cayenne-server` module to `cayenne`
- [CAY-2823](https://issues.apache.org/jira/browse/CAY-2823) Merge `ServerRuntime` back to `CayenneRuntime` and deprecate it
- [CAY-2824](https://issues.apache.org/jira/browse/CAY-2824) Rename CayenneServerModuleProvider to CayenneRuntimeModuleProvider
- [CAY-2825](https://issues.apache.org/jira/browse/CAY-2825) Rename package `o.a.c.configuration.server` to `o.a.c.configuration.runtime`
- [CAY-2826](https://issues.apache.org/jira/browse/CAY-2826) Rename `ServerModule` to `CoreModule`
- [CAY-2828](https://issues.apache.org/jira/browse/CAY-2828) Rename values in `org.apache.cayenne.configuration.Constants`
- [CAY-2829](https://issues.apache.org/jira/browse/CAY-2829) Merge `BaseContext` with `DataContext` and deprecate it
- [CAY-2830](https://issues.apache.org/jira/browse/CAY-2830) Cleanup `DataContext` code
- [CAY-2831](https://issues.apache.org/jira/browse/CAY-2831) Upgrade Gradle to 8.5
- [CAY-2833](https://issues.apache.org/jira/browse/CAY-2833) Unify code related to the Cayenne model paths processing
- [CAY-2834](https://issues.apache.org/jira/browse/CAY-2834) v11 upgrade handler should update `XMLPoolingDataSourceFactory` package
- [CAY-2835](https://issues.apache.org/jira/browse/CAY-2835) Custom aggregate functions
- [CAY-2837](https://issues.apache.org/jira/browse/CAY-2837) Deprecate TraversalHelper and move no-op implementations to TraversalHandler
- [CAY-2843](https://issues.apache.org/jira/browse/CAY-2843) Use an IN clause for single field disjoint by ID prefetches
- [CAY-2845](https://issues.apache.org/jira/browse/CAY-2845) Deprecate DataObject in favour of Persistent
- [CAY-2846](https://issues.apache.org/jira/browse/CAY-2846) Modeler: Allow to disable some validation rules in the project
- [CAY-2849](https://issues.apache.org/jira/browse/CAY-2849) Switch documentation to `hugo-asciidoctorj-extension`
- [CAY-2856](https://issues.apache.org/jira/browse/CAY-2856) Upgrade Gradle to 8.8
- [CAY-2857](https://issues.apache.org/jira/browse/CAY-2857) Java 22 support
- [CAY-2858](https://issues.apache.org/jira/browse/CAY-2858) Redesign Collection and Map Property API
- [CAY-2862](https://issues.apache.org/jira/browse/CAY-2862) Cleanup and upgrade Maven plugins dependencies
- [CAY-2865](https://issues.apache.org/jira/browse/CAY-2865) Upgrade test dependencies
- [CAY-2867](https://issues.apache.org/jira/browse/CAY-2867) Tweak `GraphBasedDbRowOpSorter` logic to allow related updates
- [CAY-2870](https://issues.apache.org/jira/browse/CAY-2870) Modeler: Upgrade CayenneDataObject to GenericPersistentObject

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- [CAY-2552](https://issues.apache.org/jira/browse/CAY-2552) ColumnQuery with flattened attributes bug
- [CAY-2621](https://issues.apache.org/jira/browse/CAY-2621) Modeler: project is dirty after a no-change db import
- [CAY-2667](https://issues.apache.org/jira/browse/CAY-2667) Fix Issues with Generic Vertical Inheritance
- [CAY-2732](https://issues.apache.org/jira/browse/CAY-2732) Exception when creating ObjEntity from a DbEntity
- [CAY-2748](https://issues.apache.org/jira/browse/CAY-2748) Mutating the list returned from the local query cache changes the cache
- [CAY-2755](https://issues.apache.org/jira/browse/CAY-2755) Modeler: Entities are not sorted by name in the class generation view
- [CAY-2762](https://issues.apache.org/jira/browse/CAY-2762) Modeler: Difference in toolbars colors on OSX
- [CAY-2763](https://issues.apache.org/jira/browse/CAY-2763) Split expressions do not work with flattened relationships
- [CAY-2764](https://issues.apache.org/jira/browse/CAY-2764) Split expressions do not work with DB relationships
- [CAY-2765](https://issues.apache.org/jira/browse/CAY-2765) dbimport: check excluded catalogs and schemas for the SQLServer
- [CAY-2769](https://issues.apache.org/jira/browse/CAY-2769) Modeler: 'rootPath' attribute is missing
- [CAY-2774](https://issues.apache.org/jira/browse/CAY-2774) Overriding service ordering in DI List causes DIRuntimeException
- [CAY-2777](https://issues.apache.org/jira/browse/CAY-2777) Reverse relationship is not set with single table inheritance
- [CAY-2782](https://issues.apache.org/jira/browse/CAY-2782) Modeler: save button becomes active on DataMap comment field focus
- [CAY-2783](https://issues.apache.org/jira/browse/CAY-2783) DbEntity to ObjEntity synchronization should check mandatory flag for primitive java types
- [CAY-2786](https://issues.apache.org/jira/browse/CAY-2786) Modeler: field outputDir work incorrect
- [CAY-2789](https://issues.apache.org/jira/browse/CAY-2789) MalformedJsonException thrown when reading manually edited JSON data in Postgres
- [CAY-2790](https://issues.apache.org/jira/browse/CAY-2790) EOModel import: NPE importing EOFetchSpecification
- [CAY-2792](https://issues.apache.org/jira/browse/CAY-2792) Fix Insertion Order For Reflexive DataObjects
- [CAY-2794](https://issues.apache.org/jira/browse/CAY-2794) Fix Incorrect JavaType for Vertical-Inheritance Attributes
- [CAY-2796](https://issues.apache.org/jira/browse/CAY-2796) Cayenne custom json formatter produces invalid json
- [CAY-2800](https://issues.apache.org/jira/browse/CAY-2800) Modeler saves map.xml files with schema ordering error
- [CAY-2801](https://issues.apache.org/jira/browse/CAY-2801) Incorrect equals() implementation in `IdGenerationMarker` could cause data missing in the commit
- [CAY-2804](https://issues.apache.org/jira/browse/CAY-2804) LocalTimeValueType potential loss of precision
- [CAY-2806](https://issues.apache.org/jira/browse/CAY-2806) Incorrect processing of unicode escape syntax in JSON
- [CAY-2809](https://issues.apache.org/jira/browse/CAY-2809) Cayenne Expression grammar doesn't allow custom function as an argument for string functions
- [CAY-2810](https://issues.apache.org/jira/browse/CAY-2810) Can't use custom operator expression with aggregate functions
- [CAY-2811](https://issues.apache.org/jira/browse/CAY-2811) Incorrect SQL building using ColumnQuery with ASTScalar
- [CAY-2813](https://issues.apache.org/jira/browse/CAY-2813) Regression: `Constants.CI_PROPERTY` flag is no longer working for MySQL
- [CAY-2815](https://issues.apache.org/jira/browse/CAY-2815) Incorrect translation of aliased expression
- [CAY-2827](https://issues.apache.org/jira/browse/CAY-2827) Saved data-source XML data doesn't correspond to the XSD schema
- [CAY-2838](https://issues.apache.org/jira/browse/CAY-2838) Vertical Inheritance: Problem setting db attribute to null via flattened path
- [CAY-2840](https://issues.apache.org/jira/browse/CAY-2840) Vertical Inheritance: Missing subclass attributes with joint prefetch
- [CAY-2841](https://issues.apache.org/jira/browse/CAY-2841) Multi column ColumnSelect with `SHARED_CACHE` fails after 1st select
- [CAY-2844](https://issues.apache.org/jira/browse/CAY-2844) Joint prefetch doesn't use ObjEntity qualifier
- [CAY-2842](https://issues.apache.org/jira/browse/CAY-2842) Prevent duplicate select columns when using distinct with order by
- [CAY-2847](https://issues.apache.org/jira/browse/CAY-2847) Improve duplicate select column detection when using order by
- [CAY-2848](https://issues.apache.org/jira/browse/CAY-2848) Vertical Inheritance: Updating one-to-many with inverse nullifies other columns
- [CAY-2850](https://issues.apache.org/jira/browse/CAY-2850) Query using Clob comparison with empty String fails
- [CAY-2851](https://issues.apache.org/jira/browse/CAY-2851) Replace Existing OneToOne From New Object
- [CAY-2853](https://issues.apache.org/jira/browse/CAY-2853) Incorrect deletion of entities from flattened attributes
- [CAY-2854](https://issues.apache.org/jira/browse/CAY-2854) Improve delete prevention detection of flattened attribute row
- [CAY-2866](https://issues.apache.org/jira/browse/CAY-2866) `DefaultDataDomainFlushAction` breaks on circular relationship update
- [CAY-2868](https://issues.apache.org/jira/browse/CAY-2868) Regression: `DefaultDbRowOpSorter` shouldn't sort update operations
- [CAY-2869](https://issues.apache.org/jira/browse/CAY-2869) Upgrade handler v11 removes db import configuration
