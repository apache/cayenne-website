---
title: Cayenne 4.1 Release Candidate 1 Released
date: 2019-10-08T14:00:00+03:00
--- 

Apache Cayenne team is glad to announce release candidate of _Cayenne 4.1_. 
Cayenne can be downloaded from [here](/download.html).

{{% gap %}}
<h2 class="text-center">A full list of changes in this release:</h2>
{{% gap 2 %}}

#### Changes/New Features:

- {{% jira 2592 %}} Modeler: make all datamaps selected in global cgen tab
- {{% jira 2593 %}} Modeler: add tableTypes field to dbImport config in dataMap
- {{% jira 2611 %}} Exclude system catalogs and schemas when run dbImport without config

{{% gap 2 %}}

#### Bug Fixes:

- {{% jira 2417 %}} Modeler: wrong title in attribute context menu
- {{% jira 2553 %}} Wrong disjoint prefetch query qualifier
- {{% jira 2565 %}} Can't use new generated PK properties with dot() operator
- {{% jira 2573 %}} DI field injection is triggered when creating sql Driver
- {{% jira 2580 %}} Cgen: Can't use custom templates for client mode
- {{% jira 2582 %}} Double insert of manyToMany relationship mapped to Set
- {{% jira 2584 %}} Crypto: can't use ColumnSelect with encrypted columns
- {{% jira 2586 %}} Char can't be materialized to EnumType in some cases
- {{% jira 2591 %}} Modeler: project becomes dirty after click on dbImport or cgen tab
- {{% jira 2594 %}} DbImport: AutoAdapter resolving inside an import operation hangs up the op on Hana DB
- {{% jira 2595 %}} ObjAttributes are not sorted in alphabetical ordering on save
- {{% jira 2596 %}} DbImport xml config changes after dbImport plugin task execution
- {{% jira 2600 %}} Modeler DbImport: Can't retrieve schema for databases with no catalog support
- {{% jira 2601 %}} Modeler DbImport: result dialog issues
- {{% jira 2603 %}} NPE reloading project in the model
- {{% jira 2605 %}} Modeler: Unable to save - java.nio.file.InvalidPathException
- {{% jira 2606 %}} Can't resolve obj path with embeddable component
- {{% jira 2608 %}} Modeler: NPE when reverse engineering with an auto-adapter DataSource
- {{% jira 2609 %}} Modeler: can't close dbImport result dialog window
- {{% jira 2614 %}} Modeler: Connection test result window shown under other windows
- {{% jira 2616 %}} Modeler: Wrong handling of path with spaces
- {{% jira 2618 %}} Unstable property ordering in generated classes
- {{% jira 2619 %}} "to-dep PK" related dbimport delta confuses the Modeler
- {{% jira 2624 %}} SelectQuery "having" qualifier is not considered when calculating cache key
