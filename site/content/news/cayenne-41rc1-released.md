+++
title = "Cayenne 4.1 Release Candidate 1 Released"
date = 2019-10-08 14:00:00+03:00
+++

 

Apache Cayenne team is glad to announce release candidate of _Cayenne 4.1_. 
Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="gap" style="margin-bottom: 2rem;"></div>

#### Changes/New Features:

- [CAY-2592](https://issues.apache.org/jira/browse/CAY-2592) Modeler: make all datamaps selected in global cgen tab
- [CAY-2593](https://issues.apache.org/jira/browse/CAY-2593) Modeler: add tableTypes field to dbImport config in dataMap
- [CAY-2611](https://issues.apache.org/jira/browse/CAY-2611) Exclude system catalogs and schemas when run dbImport without config

<div class="gap" style="margin-bottom: 2rem;"></div>

#### Bug Fixes:

- [CAY-2417](https://issues.apache.org/jira/browse/CAY-2417) Modeler: wrong title in attribute context menu
- [CAY-2553](https://issues.apache.org/jira/browse/CAY-2553) Wrong disjoint prefetch query qualifier
- [CAY-2565](https://issues.apache.org/jira/browse/CAY-2565) Can't use new generated PK properties with dot() operator
- [CAY-2573](https://issues.apache.org/jira/browse/CAY-2573) DI field injection is triggered when creating sql Driver
- [CAY-2580](https://issues.apache.org/jira/browse/CAY-2580) Cgen: Can't use custom templates for client mode
- [CAY-2582](https://issues.apache.org/jira/browse/CAY-2582) Double insert of manyToMany relationship mapped to Set
- [CAY-2584](https://issues.apache.org/jira/browse/CAY-2584) Crypto: can't use ColumnSelect with encrypted columns
- [CAY-2586](https://issues.apache.org/jira/browse/CAY-2586) Char can't be materialized to EnumType in some cases
- [CAY-2591](https://issues.apache.org/jira/browse/CAY-2591) Modeler: project becomes dirty after click on dbImport or cgen tab
- [CAY-2594](https://issues.apache.org/jira/browse/CAY-2594) DbImport: AutoAdapter resolving inside an import operation hangs up the op on Hana DB
- [CAY-2595](https://issues.apache.org/jira/browse/CAY-2595) ObjAttributes are not sorted in alphabetical ordering on save
- [CAY-2596](https://issues.apache.org/jira/browse/CAY-2596) DbImport xml config changes after dbImport plugin task execution
- [CAY-2600](https://issues.apache.org/jira/browse/CAY-2600) Modeler DbImport: Can't retrieve schema for databases with no catalog support
- [CAY-2601](https://issues.apache.org/jira/browse/CAY-2601) Modeler DbImport: result dialog issues
- [CAY-2603](https://issues.apache.org/jira/browse/CAY-2603) NPE reloading project in the model
- [CAY-2605](https://issues.apache.org/jira/browse/CAY-2605) Modeler: Unable to save - java.nio.file.InvalidPathException
- [CAY-2606](https://issues.apache.org/jira/browse/CAY-2606) Can't resolve obj path with embeddable component
- [CAY-2608](https://issues.apache.org/jira/browse/CAY-2608) Modeler: NPE when reverse engineering with an auto-adapter DataSource
- [CAY-2609](https://issues.apache.org/jira/browse/CAY-2609) Modeler: can't close dbImport result dialog window
- [CAY-2614](https://issues.apache.org/jira/browse/CAY-2614) Modeler: Connection test result window shown under other windows
- [CAY-2616](https://issues.apache.org/jira/browse/CAY-2616) Modeler: Wrong handling of path with spaces
- [CAY-2618](https://issues.apache.org/jira/browse/CAY-2618) Unstable property ordering in generated classes
- [CAY-2619](https://issues.apache.org/jira/browse/CAY-2619) "to-dep PK" related dbimport delta confuses the Modeler
- [CAY-2624](https://issues.apache.org/jira/browse/CAY-2624) SelectQuery "having" qualifier is not considered when calculating cache key
