---
title: Cayenne 5.0 Milestone 1 Released
date: 2024-09-09T12:00:00+03:00
---

Apache Cayenne development team is glad to announce the first milestone of a new major version of Cayenne.
The latest version can be downloaded from [here](/download.html).

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

- {{% jira 2378 %}} Switch usage of SelectQuery to ObjectSelect internally
- {{% jira 2498 %}} Rename packages to prevent crossing package names
- {{% jira 2597 %}} `case-when` implementation
- {{% jira 2715 %}} Support `ANY` and `ALL` expressions for subqueries
- {{% jira 2737 %}} Cayenne 5.0: cleanup deprecated code
- {{% jira 2741 %}} Cleanup TransactionDescriptor and deprecate DefaultTransactionDescriptor
- {{% jira 2742 %}} Switch minimum required Java version to 11
- {{% jira 2744 %}} Remove ROP support
- {{% jira 2746 %}} Cleanup root pom.xml
- {{% jira 2747 %}} Update project XML version to 11
- {{% jira 2751 %}} Simplify DataNode configuration
- {{% jira 2752 %}} Rename queryTemplate to dataMapTemplate in the cgen config
- {{% jira 2753 %}} Remove VPP support in the ant task
- {{% jira 2754 %}} Add `SELF` property to the cgen templates
- {{% jira 2756 %}} Modeler: simplify cgen UI
- {{% jira 2757 %}} Modeler: Create custom templates from defaults
- {{% jira 2758 %}} Refactoring code for a extended TemplateType class
- {{% jira 2759 %}} Add utility methods to the `SELF` property
- {{% jira 2760 %}} ObjectContext.userProperties need a way to clear properties
- {{% jira 2761 %}} Modeler: Editor for the cgen templates
- {{% jira 2766 %}} Modeler: Improving the work with velocity templates for class generation
- {{% jira 2767 %}} Modeler: upgrade deprecated code in custom components
- {{% jira 2771 %}} Switch to GitHub actions
- {{% jira 2772 %}} Bootique-style module "extenders" for smoother configuration
- {{% jira 2773 %}} Switch master to "5.0"
- {{% jira 2776 %}} Upgrade Gradle to 7.6
- {{% jira 2780 %}} Modeler: Multiple configurations for classes generation
- {{% jira 2781 %}} Enable 'Create PK properties' by default in the cgen configuration
- {{% jira 2784 %}} Remove 'Use Java primitive types' option from dbimport
- {{% jira 2785 %}} Modeler: improve folder selection for cgen
- {{% jira 2787 %}} Modeler: Ability to sort DB Import rules
- {{% jira 2788 %}} DbImport: Add fallback option for the batch attribute loader
- {{% jira 2795 %}} Add unit tests for the Json type
- {{% jira 2802 %}} Upgrade Gradle to 7.6.1
- {{% jira 2803 %}} Test infrastructure: declarative custom DI modules in ServerCase
- {{% jira 2805 %}} Stop calling exp parser internally
- {{% jira 2807 %}} EntityProperty.inId(..) / ninId(..) - disambiguate method parameters
- {{% jira 2814 %}} Select query iterator() and batchIterator() methods return incorrect results
- {{% jira 2816 %}} (NOT) EXIST usability - provide simple expression syntax
- {{% jira 2817 %}} Pagination flow refactoring
- {{% jira 2818 %}} JDK 21 support
- {{% jira 2819 %}} DataContext.performIteratedQuery() method should be unified with iterator() method
- {{% jira 2820 %}} Remove `server` from the components naming
- {{% jira 2821 %}} Change development versioning schema
- {{% jira 2822 %}} Rename `cayenne-server` module to `cayenne`
- {{% jira 2823 %}} Merge `ServerRuntime` back to `CayenneRuntime` and deprecate it
- {{% jira 2824 %}} Rename CayenneServerModuleProvider to CayenneRuntimeModuleProvider
- {{% jira 2825 %}} Rename package `o.a.c.configuration.server` to `o.a.c.configuration.runtime`
- {{% jira 2826 %}} Rename `ServerModule` to `CoreModule`
- {{% jira 2828 %}} Rename values in `org.apache.cayenne.configuration.Constants`
- {{% jira 2829 %}} Merge `BaseContext` with `DataContext` and deprecate it
- {{% jira 2830 %}} Cleanup `DataContext` code
- {{% jira 2831 %}} Upgrade Gradle to 8.5
- {{% jira 2833 %}} Unify code related to the Cayenne model paths processing
- {{% jira 2834 %}} v11 upgrade handler should update `XMLPoolingDataSourceFactory` package
- {{% jira 2835 %}} Custom aggregate functions
- {{% jira 2837 %}} Deprecate TraversalHelper and move no-op implementations to TraversalHandler
- {{% jira 2843 %}} Use an IN clause for single field disjoint by ID prefetches
- {{% jira 2845 %}} Deprecate DataObject in favour of Persistent
- {{% jira 2846 %}} Modeler: Allow to disable some validation rules in the project
- {{% jira 2849 %}} Switch documentation to `hugo-asciidoctorj-extension`
- {{% jira 2856 %}} Upgrade Gradle to 8.8
- {{% jira 2857 %}} Java 22 support
- {{% jira 2858 %}} Redesign Collection and Map Property API
- {{% jira 2862 %}} Cleanup and upgrade Maven plugins dependencies
- {{% jira 2865 %}} Upgrade test dependencies
- {{% jira 2867 %}} Tweak `GraphBasedDbRowOpSorter` logic to allow related updates
- {{% jira 2870 %}} Modeler: Upgrade CayenneDataObject to GenericPersistentObject

<div class="pb-2"><!-- gap 2rem --></div>

#### Bug Fixes:

- {{% jira 2552 %}} ColumnQuery with flattened attributes bug
- {{% jira 2621 %}} Modeler: project is dirty after a no-change db import
- {{% jira 2667 %}} Fix Issues with Generic Vertical Inheritance
- {{% jira 2732 %}} Exception when creating ObjEntity from a DbEntity
- {{% jira 2748 %}} Mutating the list returned from the local query cache changes the cache
- {{% jira 2755 %}} Modeler: Entities are not sorted by name in the class generation view
- {{% jira 2762 %}} Modeler: Difference in toolbars colors on OSX
- {{% jira 2763 %}} Split expressions do not work with flattened relationships
- {{% jira 2764 %}} Split expressions do not work with DB relationships
- {{% jira 2765 %}} dbimport: check excluded catalogs and schemas for the SQLServer
- {{% jira 2769 %}} Modeler: 'rootPath' attribute is missing
- {{% jira 2774 %}} Overriding service ordering in DI List causes DIRuntimeException
- {{% jira 2777 %}} Reverse relationship is not set with single table inheritance
- {{% jira 2782 %}} Modeler: save button becomes active on DataMap comment field focus
- {{% jira 2783 %}} DbEntity to ObjEntity synchronization should check mandatory flag for primitive java types
- {{% jira 2786 %}} Modeler: field outputDir work incorrect
- {{% jira 2789 %}} MalformedJsonException thrown when reading manually edited JSON data in Postgres
- {{% jira 2790 %}} EOModel import: NPE importing EOFetchSpecification
- {{% jira 2792 %}} Fix Insertion Order For Reflexive DataObjects
- {{% jira 2794 %}} Fix Incorrect JavaType for Vertical-Inheritance Attributes
- {{% jira 2796 %}} Cayenne custom json formatter produces invalid json
- {{% jira 2800 %}} Modeler saves map.xml files with schema ordering error
- {{% jira 2801 %}} Incorrect equals() implementation in `IdGenerationMarker` could cause data missing in the commit
- {{% jira 2804 %}} LocalTimeValueType potential loss of precision
- {{% jira 2806 %}} Incorrect processing of unicode escape syntax in JSON
- {{% jira 2809 %}} Cayenne Expression grammar doesn't allow custom function as an argument for string functions
- {{% jira 2810 %}} Can't use custom operator expression with aggregate functions
- {{% jira 2811 %}} Incorrect SQL building using ColumnQuery with ASTScalar
- {{% jira 2813 %}} Regression: `Constants.CI_PROPERTY` flag is no longer working for MySQL
- {{% jira 2815 %}} Incorrect translation of aliased expression
- {{% jira 2827 %}} Saved data-source XML data doesn't correspond to the XSD schema
- {{% jira 2838 %}} Vertical Inheritance: Problem setting db attribute to null via flattened path
- {{% jira 2840 %}} Vertical Inheritance: Missing subclass attributes with joint prefetch
- {{% jira 2841 %}} Multi column ColumnSelect with `SHARED_CACHE` fails after 1st select
- {{% jira 2844 %}} Joint prefetch doesn't use ObjEntity qualifier
- {{% jira 2842 %}} Prevent duplicate select columns when using distinct with order by
- {{% jira 2847 %}} Improve duplicate select column detection when using order by
- {{% jira 2848 %}} Vertical Inheritance: Updating one-to-many with inverse nullifies other columns
- {{% jira 2850 %}} Query using Clob comparison with empty String fails
- {{% jira 2851 %}} Replace Existing OneToOne From New Object
- {{% jira 2853 %}} Incorrect deletion of entities from flattened attributes
- {{% jira 2854 %}} Improve delete prevention detection of flattened attribute row
- {{% jira 2866 %}} `DefaultDataDomainFlushAction` breaks on circular relationship update
- {{% jira 2868 %}} Regression: `DefaultDbRowOpSorter` shouldn't sort update operations
- {{% jira 2869 %}} Upgrade handler v11 removes db import configuration