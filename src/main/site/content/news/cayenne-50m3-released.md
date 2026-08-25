---
title: Cayenne 5.0 Milestone 3 Released
date: 2026-08-25T12:00:00+03:00
---

Apache Cayenne development team is glad to announce the third milestone of a new major version of Cayenne.
The latest version can be downloaded from [here](/download.html).

**NOTE:** Please see [Milestone 1](/2024/09/cayenne-50m1-released/) and [Milestone 2](/2026/06/cayenne-50m2-released/) release notes for more information on Cayenne 5.

### Full List of Changes in this Release

#### Changes/New Features

- {{% jira 2861 %}} Derby version upgrade
- {{% jira 2912 %}} Compact SQL logger
- {{% jira 2954 %}} Don't wrap selecting queries in transactions
- {{% jira 2956 %}} Get rid of a dedicated adapter for Oracle 8
- {{% jira 2957 %}} Get rid of adapter for legacy HSQLDB <= 1.8
- {{% jira 2962 %}} Allow unconstrained VARCHAR
- {{% jira 2963 %}} Replace TypesHandler / types.xml with hardcoded map
- {{% jira 2969 %}} Extender API for "soft" delete
- {{% jira 2970 %}} Tighten deferred value resolution contract on commit
- {{% jira 2971 %}} Remove extra spaces within SQL parenthesis
- {{% jira 2972 %}} Fewer parentheses in generated SQL
- {{% jira 2974 %}} CayenneSqlException with a reference to translated query
- {{% jira 2975 %}} Mnemonic table aliases in generated SQL
- {{% jira 2978 %}} AI skill: "cayenne-model-naming"
- {{% jira 2979 %}} AI skill: "cayenne-full-db-sync"
- {{% jira 2980 %}} Improve model name generation
- {{% jira 2981 %}} Remove DataNode from XML mapping
- {{% jira 2982 %}} Modeler: when upgrading projects allow upgraders to send outcome messages
- {{% jira 2983 %}} CayenneDataSource: Public-facing DataSource builder
- {{% jira 2984 %}} Remove "DataChannel" injectable dependency
- {{% jira 2985 %}} DataDomain init and structure cleanup
- {{% jira 2986 %}} Cgen to run unconditionally
- {{% jira 2987 %}} DataNode to own PkGenerator
- {{% jira 2989 %}} Upgrade MCP SDK to 2.0
- {{% jira 2992 %}} dbimport: support postgres drivers newer than 42.7.4
- {{% jira 2994 %}} cgen: improve path handling
- {{% jira 2995 %}} Migrate Modeler to FlatLaf library

#### Bug Fixes

- {{% jira 2892 %}} Modeler: Exception when deleting a callback
- {{% jira 2941 %}} Modeler won't start on Windows on Java 25
- {{% jira 2958 %}} Empty join is saved
- {{% jira 2959 %}} Modeler: DbRelationship dialog "Cancel" doesn't cancel
- {{% jira 2960 %}} Undoing renamed relationship change throws
- {{% jira 2961 %}} PostgreSQL "text" column is reverse-engineered as CLOB
- {{% jira 2964 %}} ClassCastException for non-generated meaningful PKs
- {{% jira 2965 %}} MCP Cgen should not fail on an absent "<cgen>" tag
- {{% jira 2966 %}} "comment" field is lost when upgrading from v10 to v12
- {{% jira 2967 %}} SQLTemplate/SQLSelect broken pagination
- {{% jira 2968 %}} Vertical Inheritance: INSERT instead of UPDATE after updating flattened attribute
- {{% jira 2973 %}} Exception trying to copy/paste a callback
- {{% jira 2976 %}} Exception creating a relationship for an Incomplete ObjEntity
- {{% jira 2977 %}} DbImport confused by multi-key relationships
- {{% jira 2988 %}} Iterated queries commit transactions they don't own
- {{% jira 2990 %}} Gradle plugin tests are failing on Windows
