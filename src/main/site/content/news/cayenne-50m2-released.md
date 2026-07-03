---
title: Cayenne 5.0 Milestone 2 Released
date: 2026-06-24T12:00:00+03:00
---

Apache Cayenne development team is glad to announce the second milestone of a new major version of Cayenne.
The latest version can be downloaded from [here](/download.html).

**NOTE:** Since this is Milestone 2, please see [Milestone 1](/2024/09/cayenne-50m1-released/) release notes for more information on Cayenne 5.

### Incompatible Changes

#### Java Version

The minimum required Java version is now **Java 21**, Java 8 and 11 are no longer supported.

#### Maven Dependency

```xml
<dependency>
    <groupId>org.apache.cayenne</groupId>
    <artifactId>cayenne</artifactId>
    <version>5.0-M2</version>
</dependency>
```

For more details about incompatible changes and deprecations, please consult the [upgrade notes](https://github.com/apache/cayenne/blob/cayenne-parent-5.0-M2/UPGRADE.md).

### Notable New Features

#### AI-Assisted Development

Native support for AI-assisted development. This includes an MCP server bundled with the Modeler that allows your favorite agent to (A) open your project in the Modeler, (B) run DB Import, (C) run cgen. MCP works with any agent of course. Additionally, there is a plugin for Claude Code with a number of typical "skills". See the docs for details: https://cayenne.apache.org/docs/5.0/cayenne-guide/agentic-coding/  And we'd love feedback on this too.

#### Modeler Polished

Claude Code was used to polish the Modeler. While it generally looks the same as before, active users will notice that a number of small annoying UI/UX issues were fixed. If your own pet Modeler bug/quirk is not yet addressed, please let us know on the mailing list.

### Full List of Changes in this Release

#### Changes/New Features

- {{% jira 2859 %}} Redesign SelectById factory methods
- {{% jira 2873 %}} Change Orderings.orderedList() to accept a Collection rather than a List
- {{% jira 2884 %}} Upgrade gradle to 8.13
- {{% jira 2893 %}} Update velocity-engine-core dependency
- {{% jira 2897 %}} Add no-op default implementations to the GraphChangeHandler interface
- {{% jira 2905 %}} Upgrade Gradle to 8.14
- {{% jira 2906 %}} In-memory evaluation of `(not) exists` expressions
- {{% jira 2908 %}} Review and upgrade dependencies
- {{% jira 2916 %}} SelectById: unify logic for null/empty values
- {{% jira 2917 %}} Add Qualifier Joins Before Depenent Table Joins
- {{% jira 2918 %}} Remove OGNL Binding Architecture from CayenneModeler
- {{% jira 2920 %}} Remove "Reengineer Database Schema" menu
- {{% jira 2922 %}} Modeler: remove support for upgrading from file-based preferences
- {{% jira 2923 %}} Modeler: Restore table cell editor borders
- {{% jira 2924 %}} Move MapEvent and subclasses from the core to the Modeler
- {{% jira 2925 %}} Remove "cayenne-modeler-maven-plugin"
- {{% jira 2927 %}} Modeler: Better-looking "Update Entity Class Name" dialog
- {{% jira 2928 %}} Modeler: remove floating log console modality
- {{% jira 2929 %}} Modeler: Prefrences management UI
- {{% jira 2930 %}} Modeler: remove "rename" button from DB Import toolbar
- {{% jira 2932 %}} Remove "Generate Classes" menu
- {{% jira 2933 %}} Modeler: DB Type Column Unreadable for Selected Rows
- {{% jira 2935 %}} Upgrade Cayenne 5.0 to Java 21
- {{% jira 2936 %}} Add a placeholder MCP server to the Modeler distribution
- {{% jira 2937 %}} Decommission "graph" Support
- {{% jira 2938 %}} Modeler: prettier DB Import - part 1
- {{% jira 2940 %}} Upgrade to SLF4J version 2.0.17
- {{% jira 2942 %}} CayenneModeler MCP: cgen_run tool
- {{% jira 2943 %}} CayenneModeler MCP: open_project tool
- {{% jira 2945 %}} CayenneModeler universal "main"
- {{% jira 2946 %}} Claude Code "plugin" for agentic coding with Cayenne
- {{% jira 2947 %}} Merge "cayenne-commitlog" into the core
- {{% jira 2948 %}} Modeler: use native FileDialog on Mac
- {{% jira 2953 %}} Upgrade Gradle to 9.4.0
- {{% jira 2955 %}} Get rid of QueryEngine abstraction

#### Bug Fixes

- {{% jira 2701 %}} MySQL DST-related LocalDateTime issues
- {{% jira 2836 %}} ObjectSelect.selectCount() throws if a query contains ordering
- {{% jira 2860 %}} Translate (not)in expression with empty values
- {{% jira 2863 %}} DbEntity qualifiers are no longer applied to JOIN conditions
- {{% jira 2871 %}} QualifierTranslator breaks on a relationship with a compound FK
- {{% jira 2872 %}} CayenneModeler "Documentation" link is broken
- {{% jira 2876 %}} Memory leak in the ObjectStore
- {{% jira 2879 %}} Negative number for non parameterized ObjectSelect query not processed correctly
- {{% jira 2883 %}} License and notice templates are not processed by the Gradle build
- {{% jira 2885 %}} Modeler: DbImport fails to load DB schema view
- {{% jira 2887 %}} Expressions: Incorrect serialization to string of numeric literals
- {{% jira 2889 %}} Make subclassing a PK Generator easier
- {{% jira 2891 %}} Expressions: incorrect SQL translation of the ASTNegate node with scalar argument
- {{% jira 2895 %}} Incorrect Lazy Pagination Comparison for BigInteger PK
- {{% jira 2896 %}} Inserting two identical objects into two datamaps stores both objects in the last used datamap
- {{% jira 2898 %}} Crypto: NPE in a ColumnQuery
- {{% jira 2899 %}} CommitLog: missing lifecycle-induced changes in `excludeFromTransaction` mode
- {{% jira 2900 %}} Meaningful generated PKs could lead to the ClassCastException
- {{% jira 2901 %}} Loosing comments on the existing ObjAttribute after DB import
- {{% jira 2902 %}} Shared query cache clobbers newer object state
- {{% jira 2904 %}} Disjoint prefetch returns incorrect data
- {{% jira 2914 %}} Modeler: DB Import "Table Types" filter change does not refresh the schema tree
- {{% jira 2919 %}} Exception in "Generate Database Schema"
- {{% jira 2921 %}} Modeler: consistent duplicate name handling
- {{% jira 2926 %}} Modeler: renaming an ObjEntity adds it to cgen excludeEntities
- {{% jira 2931 %}} Modeler: default encoding detected as UTF8, should be UTF-8
- {{% jira 2934 %}} Modeler: dropdown data trunction
- {{% jira 2944 %}} MergerTokenFactoryProvider does not resolve adapter subclasses
- {{% jira 2951 %}} Newly reverse-engineered entities are excluded from CGen
- {{% jira 2952 %}} Unstable project extension ordering
