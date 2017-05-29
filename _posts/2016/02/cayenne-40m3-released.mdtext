---
layout: post
title:  Cayenne 4.0 Milestone 3 Released
date:   2016-2-12
---

This new milestone release has plenty of new features, bug fixes and other improvements. Below are just the main highlights. For more details check out the full release notes further down, as well as [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.M3/docs/doc/src/main/resources/UPGRADE.txt).

Cayenne can be downloaded from [here](/download.html).

### Java 7

Since this milestone minimal Java version is 1.7. If you still need Java 1.6, you can use Cayenne 3.1 or 4.0.M2 until your application is able to upgrade.

### Java 8 Date/Time and Joda-Time Support

Cayenne now has two additional modules that contain ExtendedTypes for Java 8 Date/Time and Joda-Time support. You will need to add appropriate dependency and then create a coresponding module and add it to the ServerRuntime. For example:

    Module java8Module = new CayenneJava8Module();
    this.runtime = new ServerRuntime("cayenne-project.xml", java8Module);

### Improvements in Query API

All new fluent query classes (ObjectSelect, SQLSelect, SelectById) have the following new methods:

* `List<T> select(ObjectContext context);`
* `T selectOne(ObjectContext context);`
* `T selectFirst(ObjectContext context);`
* `void iterate(ObjectContext context, ResultIteratorCallback<T> callback);`
* `ResultIterator<T> iterator(ObjectContext context);`
* `ResultBatchIterator<T> batchIterator(ObjectContext context, int size);`

The "old" style SelectQuery is still supported and also includes these methods. 

Also ResultIterator and ResultBatchIterator are both AutoCloseable now. So you will be able to use try-with-resources with them.

### Non-blocking DataSource

Default Cayenne DataSource provider is switched to a non-blocking implementation that has a much better concurrency compared to the old version.

### DBCP2

DBCPDataSourceFactory is now based on DBCP2 (which is required under Java 1.7 and newer). If you are using it, you will need to take a few steps to upgrade. For more details see [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.M3/docs/doc/src/main/resources/UPGRADE.txt).

### Capturing a stream of commit changes

Sometimes it is very useful to capture all or parts of "commit log" for commits made through Cayenne (for audit purposes, etc). It has always been a challenge to do it in a consistent and convenient manner. We've made a few attempts to solve this before. M3 features new and the most comprehensive solution. There is a [PostCommitBuilder](https://github.com/apache/cayenne/blob/4.0.M3/cayenne-lifecycle/src/main/java/org/apache/cayenne/lifecycle/postcommit/PostCommitModuleBuilder.java) class that helps to create a special DI module with all required extensions for this to work. It allows to register [PostCommitListeners](https://github.com/apache/cayenne/blob/4.0.M3/cayenne-lifecycle/src/main/java/org/apache/cayenne/lifecycle/postcommit/PostCommitListener.java) that will receive an event on every commit, containing a full commit log object.

### A full list of changes in this release:

* CAY-1626 Add JodaTime DateTime support
* CAY-1902 Implement resolving Db paths for DataObjects
* CAY-1991 More control over generated String property names
* CAY-1992 Allow to exclude DataMap java class from Modeler class generation
* CAY-1995 Add support for iterators to Select
* CAY-2001 Saving a display state of Project
* CAY-2004 EJBQL: Support for ordering on aggregate expressions
* CAY-2007 Refactoring SelectTranslator for better extensibility
* CAY-2008 Connection pool refactoring and validation query support in Cayenne DataSource
* CAY-2009 Non-blocking connection pool
* CAY-2010 DataSourceBuilder to help users create pooling and non-pooling DataSources
* CAY-2011 Support for Java 8 date and time types
* CAY-2012 ObjectSelect, SelectById: eliminating methods that reset query state
* CAY-2013 In-memory evaluation of DB expressions - non-id attributes
* CAY-2023 Decouple the use of ResourceLocator
* CAY-2025 Support for DBCP2
* CAY-2026 Java 7
* CAY-2027 Support for Expression outer join syntax in EJBQL
* CAY-2028 Wrap DataChannelFilter calls in the main transaction
* CAY-2029 Allow out-of-order insertion into DI lists
* CAY-2030 Capturing a stream of commit changes
* CAY-2035 Autobind items added to collections (Cayenne DI)
* CAY-2042 Remove an arbitrary limitation on 1000 runtime DbRelationships
* CAY-2043 ServerRuntimeBuilder: use DataDomain name for the default DataNode
* CAY-2044 Collection setter for to-many relationships
* CAY-2045 Add autosuggestion fields to choose attributes and relationships

### Bug Fixes:

* CAY-1977 Cleanup Modeler reverse engineering functionality
* CAY-1987 Widen types before performing in-memory evaluation of qualifiers using j.l.Number subclasses
* CAY-1990 Incorrect display of the raw SQL query in Modeler
* CAY-1993 Reverse Engineering does not work with PostgreSQL database
* CAY-1994 Modeler Migration Tool Shows No Changes
* CAY-1997 Difference in NULL handling inside the path between PropertyUtils and DataObject.readNestedProperty
* CAY-1998 Speeding up PropertyUtils
* CAY-1999 Unneeded Property import for superclasses with no properties
* CAY-2003 cdbimport doesn't work properly with several includeTable tags
* CAY-2015 Joint prefetches combined with DisjointById prefetches return null incorrectly
* CAY-2020 typo: correction to upper alpha range in Rot13PasswordEncoder
* CAY-2041 "cayenne.jdbc.max_connections" and "cayenne.jdbc.min_connections" command line options are ignored
* CAY-2047 Relationship mapping with target inheritance
* CAY-2049 Changing the Relationship name in ObjRelationship Inspector has no effect