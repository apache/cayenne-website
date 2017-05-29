---
layout: post
title:  Cayenne 3.0.2 is Released
date:   2011-6-21
---

We just released a maintenance version of stable Cayenne 3.0 branch. It has 19 bug fixes and minor improvements, e.g. a performance improvement for MySQL (JDBC batching). If you are a 3.0.x user, this is certainly a recommended upgrade. A full list of closed jiras is below:

* CAY-1500 MySQL JDBC Batching
* CAY-1403 Method "readNestedProperty" Should Resolve Through Iterative Invocations onto DataObject and Not Complete Within Cayenne.readNestedProperty
* CAY-1432 java.io.NotSerializableException when using OSCache for query cache with prefetches and persitent cache.
* CAY-1444 NPE when persisting a newly instatiated object
* CAY-1456 Investigate auto-increment columns on DB2 and switch the adapter policy to support them
* CAY-1484 Flattened attribute queries are incorrectly generated
* CAY-1485 Memory information for about dialog
* CAY-1488 OutOfMemory when selecting "Remove Foreign Keys Mapped as Object Attributes"
* CAY-1489 NPE using DataContext.objectFromDataRow for a nested context
* CAY-1490 Maven cgen: all and datamap modes can not be activated
* CAY-1496 Problem in derby: comparison operators are not supported on Clob object values.
* CAY-1503 POST_LOAD is not called on prefetched objects
* CAY-1505 Callbacks: POST_UPDATE is called on updated removed object, instead of POST_REMOVE
* CAY-1506 Reserverd words mapping in WHERE clause
* CAY-1518 cgen: duplicate callback methods
* CAY-1557 Vertical inheritance is broken for subclasses with more than one flattened attribute
* CAY-1561 Modeler trivial bug NullPointerException on remove
* CAY-1567 BaseQueryMetadata.setPrefetches() causes a shared lock
* CAY-1578 unicode character types on MS SQL 2008 server aren't recognized.
