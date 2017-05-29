---
layout: post
title:  Cayenne 3.1 Beta 2 Released
date:   2013-2-18
---

A second Beta of Cayenne 3.1 is available. Apache Cayenne is one of the leading open source Java ORMs with a simple learning curve and many unique features like generic objects, remote object persistence, etc. This beta release includes more complete documentation (still work in progress), and more than 20 bug fixes to the Modeler and the runtime framework. This release goes a long way in stabilizing and improving 3.1 for an average user. Very likely this will be the last beta before we make a "release candidate" and 3.1 "final". Most of the remaining 3.1 work will now focus on user documentation. 

B2 is a recommended upgrade for 3.1 users. We also certainly encourage everyone else to upgrade to 3.1 right now and tell us if you find any problems. 

Cayenne can be downloaded from [here](/download.html).

A full list of changes in this release:

* CAY-1737 ObjectContexts listening to DataChannel events must be non-blocking
* CAY-1753 remove light-superclass.vm class template
* CAY-1754 Modeler suggested URL for SQLServer should start with 'jdbc:sqlserver:' instead of 'jdbc:microsoft:sqlserver:'

Bug fixes in this release:

* CAY-957 Deadlock in nested contexts
* CAY-1689 [PATCH] LOB*QueryBuilders do not check isQuotingSQLIdentifiers
* CAY-1701 Modeler cannot undo pasting of obj (db) entity
* CAY-1708 Modeler error when pasting datamap with EJBQL query
* CAY-1713 Inconsistent property name: "cayenne.rop.service.timeout"
* CAY-1714 ROP: Cayenne tries to build a query for non committed object when using more than 2 nested contexts 
* CAY-1715 Passing parameters to mapped EJBQL queries
* CAY-1721 Writing blobs fails (Oracle)
* CAY-1725 NullPointerException from call to removeToManyTarget
* CAY-1727 Modeler thinks entity is using inheritance when it doesn't
* CAY-1729 PersistentDescriptor must have predictable property iteration order
* CAY-1735 Serializable IncrementalFaultList
* CAY-1738 Tutorial cayenne-rop-server should be packaged as a war
* CAY-1739 Cayenne ROP server resets session on every request if BASIC auth is used
* CAY-1741 Serializable DataObjectBaseProperty
* CAY-1742 CAY-1742 ObjRelationship inspector says "ObjAttribute Inspector"
* CAY-1744 Unexpected read-only relationships in vertical inheritance mapping
* CAY-1749 NPE on simple nested context commit
* CAY-1755 FaultFailureException resolving relationships to UNIQUE non-PK columns
* CAY-1757 ROP: Faulting entity relationship resets uncommitted modifications made to its reverse relationship 
* CAY-1774 EhCacheQueryCache.get(QueryMetadata, QueryCacheEntryFactory) returns null if EhCache instance for group is not present
* CAY-1783 JdbcPkGenerator.longPkFromDatabase would throw an exception if the PK value exceeds a range of Java int
