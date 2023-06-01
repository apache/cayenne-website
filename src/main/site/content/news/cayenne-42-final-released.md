---
title: Cayenne 4.2 Final Released
date: 2023-05-25T18:00:00+03:00
---

Apache Cayenne team is really glad to announce a final (general availability) release of _Cayenne 4.2_. A brief overview of changes since 4.1 includes:

- Runtime
  - Callback annotations on entity classes
  - Customizable SQL generator API
  - Nested queries
  - Ordering on aggregate functions
  - Property API made type-specific
  - Custom functions and operators in queries
  - New attributes types: JSON, geospatial

- Modeler
  - Acquire JDBC drivers from Maven Central
  - Improvements to attribute and relationships mapping
  - Lots of bug fixes in DB Import, etc.

- Deprecations (to be removed in 5.0)
  - ROP-related modules
  - cayenne-web
  - Clustering transports (cayenne-xmpp, etc.)

Full release notes can be read [here](https://github.com/apache/cayenne/blob/STABLE-4.2/RELEASE-NOTES.txt).

Cayenne Framework and Modeler can be downloaded [here](/download.html).

{{% gap %}}

### **Updates since the last release candidate (4.2.RC2)**

{{% gap 2 %}}

#### Changes/New Features

- {{% jira 2802 %}} Upgrade Gradle to 7.6.1
- {{% jira 2805 %}} Stop calling exp parser internally

{{% gap 2 %}}

#### Bug Fixes

- {{% jira 2552 %}} ColumnQuery with flattened attributes bug
- {{% jira 2783 %}} DbEntity to ObjEntity synchronization should check mandatory flag for primitive java types
- {{% jira 2789 %}} MalformedJsonException thrown when reading manually edited JSON data in Postgres
- {{% jira 2790 %}} EOModel import: NPE importing EOFetchSpecification
- {{% jira 2792 %}} Fix Insertion Order For Reflexive DataObjects
- {{% jira 2794 %}} Fix Incorrect JavaType for Vertical-Inheritance Attributes
- {{% jira 2796 %}} Cayenne custom json formatter produces invalid json
- {{% jira 2800 %}} Modeler saves map.xml files with schema ordering error
- {{% jira 2801 %}} Incorrect equals() implementation in IdGenerationMarker could cause data missing in the commit
