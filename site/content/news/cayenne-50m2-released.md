+++
title = "Cayenne 5.0 Milestone 2 Released"
date = 2026-06-24 12:00:00+03:00
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



Apache Cayenne development team is glad to announce the second milestone of a new major version of Cayenne.
The latest version can be downloaded from [here](/download/).

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

Native support for AI-assisted development. This includes an MCP server bundled with the Modeler that allows your favorite agent to (A) open your project in the Modeler, (B) run DB Import, (C) run cgen. MCP works with any agent of course. Additionally, there is a plugin for Claude Code with a number of typical "skills". See the [MCP documentation](https://cayenne.apache.org/docs/cayenne/5.0/guide/mcp.html) for details. And we'd love feedback on this too.

#### Modeler Polished

Claude Code was used to polish the Modeler. While it generally looks the same as before, active users will notice that a number of small annoying UI/UX issues were fixed. If your own pet Modeler bug/quirk is not yet addressed, please let us know on the mailing list.

### Full List of Changes in this Release

#### Changes/New Features

- [CAY-2859](https://issues.apache.org/jira/browse/CAY-2859) Redesign SelectById factory methods
- [CAY-2873](https://issues.apache.org/jira/browse/CAY-2873) Change Orderings.orderedList() to accept a Collection rather than a List
- [CAY-2884](https://issues.apache.org/jira/browse/CAY-2884) Upgrade gradle to 8.13
- [CAY-2893](https://issues.apache.org/jira/browse/CAY-2893) Update velocity-engine-core dependency
- [CAY-2897](https://issues.apache.org/jira/browse/CAY-2897) Add no-op default implementations to the GraphChangeHandler interface
- [CAY-2905](https://issues.apache.org/jira/browse/CAY-2905) Upgrade Gradle to 8.14
- [CAY-2906](https://issues.apache.org/jira/browse/CAY-2906) In-memory evaluation of `(not) exists` expressions
- [CAY-2908](https://issues.apache.org/jira/browse/CAY-2908) Review and upgrade dependencies
- [CAY-2916](https://issues.apache.org/jira/browse/CAY-2916) SelectById: unify logic for null/empty values
- [CAY-2917](https://issues.apache.org/jira/browse/CAY-2917) Add Qualifier Joins Before Depenent Table Joins
- [CAY-2918](https://issues.apache.org/jira/browse/CAY-2918) Remove OGNL Binding Architecture from CayenneModeler
- [CAY-2920](https://issues.apache.org/jira/browse/CAY-2920) Remove "Reengineer Database Schema" menu
- [CAY-2922](https://issues.apache.org/jira/browse/CAY-2922) Modeler: remove support for upgrading from file-based preferences
- [CAY-2923](https://issues.apache.org/jira/browse/CAY-2923) Modeler: Restore table cell editor borders
- [CAY-2924](https://issues.apache.org/jira/browse/CAY-2924) Move MapEvent and subclasses from the core to the Modeler
- [CAY-2925](https://issues.apache.org/jira/browse/CAY-2925) Remove "cayenne-modeler-maven-plugin"
- [CAY-2927](https://issues.apache.org/jira/browse/CAY-2927) Modeler: Better-looking "Update Entity Class Name" dialog
- [CAY-2928](https://issues.apache.org/jira/browse/CAY-2928) Modeler: remove floating log console modality
- [CAY-2929](https://issues.apache.org/jira/browse/CAY-2929) Modeler: Prefrences management UI
- [CAY-2930](https://issues.apache.org/jira/browse/CAY-2930) Modeler: remove "rename" button from DB Import toolbar
- [CAY-2932](https://issues.apache.org/jira/browse/CAY-2932) Remove "Generate Classes" menu
- [CAY-2933](https://issues.apache.org/jira/browse/CAY-2933) Modeler: DB Type Column Unreadable for Selected Rows
- [CAY-2935](https://issues.apache.org/jira/browse/CAY-2935) Upgrade Cayenne 5.0 to Java 21
- [CAY-2936](https://issues.apache.org/jira/browse/CAY-2936) Add a placeholder MCP server to the Modeler distribution
- [CAY-2937](https://issues.apache.org/jira/browse/CAY-2937) Decommission "graph" Support
- [CAY-2938](https://issues.apache.org/jira/browse/CAY-2938) Modeler: prettier DB Import - part 1
- [CAY-2940](https://issues.apache.org/jira/browse/CAY-2940) Upgrade to SLF4J version 2.0.17
- [CAY-2942](https://issues.apache.org/jira/browse/CAY-2942) CayenneModeler MCP: cgen_run tool
- [CAY-2943](https://issues.apache.org/jira/browse/CAY-2943) CayenneModeler MCP: open_project tool
- [CAY-2945](https://issues.apache.org/jira/browse/CAY-2945) CayenneModeler universal "main"
- [CAY-2946](https://issues.apache.org/jira/browse/CAY-2946) Claude Code "plugin" for agentic coding with Cayenne
- [CAY-2947](https://issues.apache.org/jira/browse/CAY-2947) Merge "cayenne-commitlog" into the core
- [CAY-2948](https://issues.apache.org/jira/browse/CAY-2948) Modeler: use native FileDialog on Mac
- [CAY-2953](https://issues.apache.org/jira/browse/CAY-2953) Upgrade Gradle to 9.4.0
- [CAY-2955](https://issues.apache.org/jira/browse/CAY-2955) Get rid of QueryEngine abstraction

#### Bug Fixes

- [CAY-2701](https://issues.apache.org/jira/browse/CAY-2701) MySQL DST-related LocalDateTime issues
- [CAY-2836](https://issues.apache.org/jira/browse/CAY-2836) ObjectSelect.selectCount() throws if a query contains ordering
- [CAY-2860](https://issues.apache.org/jira/browse/CAY-2860) Translate (not)in expression with empty values
- [CAY-2863](https://issues.apache.org/jira/browse/CAY-2863) DbEntity qualifiers are no longer applied to JOIN conditions
- [CAY-2871](https://issues.apache.org/jira/browse/CAY-2871) QualifierTranslator breaks on a relationship with a compound FK
- [CAY-2872](https://issues.apache.org/jira/browse/CAY-2872) CayenneModeler "Documentation" link is broken
- [CAY-2876](https://issues.apache.org/jira/browse/CAY-2876) Memory leak in the ObjectStore
- [CAY-2879](https://issues.apache.org/jira/browse/CAY-2879) Negative number for non parameterized ObjectSelect query not processed correctly
- [CAY-2883](https://issues.apache.org/jira/browse/CAY-2883) License and notice templates are not processed by the Gradle build
- [CAY-2885](https://issues.apache.org/jira/browse/CAY-2885) Modeler: DbImport fails to load DB schema view
- [CAY-2887](https://issues.apache.org/jira/browse/CAY-2887) Expressions: Incorrect serialization to string of numeric literals
- [CAY-2889](https://issues.apache.org/jira/browse/CAY-2889) Make subclassing a PK Generator easier
- [CAY-2891](https://issues.apache.org/jira/browse/CAY-2891) Expressions: incorrect SQL translation of the ASTNegate node with scalar argument
- [CAY-2895](https://issues.apache.org/jira/browse/CAY-2895) Incorrect Lazy Pagination Comparison for BigInteger PK
- [CAY-2896](https://issues.apache.org/jira/browse/CAY-2896) Inserting two identical objects into two datamaps stores both objects in the last used datamap
- [CAY-2898](https://issues.apache.org/jira/browse/CAY-2898) Crypto: NPE in a ColumnQuery
- [CAY-2899](https://issues.apache.org/jira/browse/CAY-2899) CommitLog: missing lifecycle-induced changes in `excludeFromTransaction` mode
- [CAY-2900](https://issues.apache.org/jira/browse/CAY-2900) Meaningful generated PKs could lead to the ClassCastException
- [CAY-2901](https://issues.apache.org/jira/browse/CAY-2901) Loosing comments on the existing ObjAttribute after DB import
- [CAY-2902](https://issues.apache.org/jira/browse/CAY-2902) Shared query cache clobbers newer object state
- [CAY-2904](https://issues.apache.org/jira/browse/CAY-2904) Disjoint prefetch returns incorrect data
- [CAY-2914](https://issues.apache.org/jira/browse/CAY-2914) Modeler: DB Import "Table Types" filter change does not refresh the schema tree
- [CAY-2919](https://issues.apache.org/jira/browse/CAY-2919) Exception in "Generate Database Schema"
- [CAY-2921](https://issues.apache.org/jira/browse/CAY-2921) Modeler: consistent duplicate name handling
- [CAY-2926](https://issues.apache.org/jira/browse/CAY-2926) Modeler: renaming an ObjEntity adds it to cgen excludeEntities
- [CAY-2931](https://issues.apache.org/jira/browse/CAY-2931) Modeler: default encoding detected as UTF8, should be UTF-8
- [CAY-2934](https://issues.apache.org/jira/browse/CAY-2934) Modeler: dropdown data trunction
- [CAY-2944](https://issues.apache.org/jira/browse/CAY-2944) MergerTokenFactoryProvider does not resolve adapter subclasses
- [CAY-2951](https://issues.apache.org/jira/browse/CAY-2951) Newly reverse-engineered entities are excluded from CGen
- [CAY-2952](https://issues.apache.org/jira/browse/CAY-2952) Unstable project extension ordering
