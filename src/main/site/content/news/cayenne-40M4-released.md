---
title: Cayenne 4.0 Milestone 4 Released
date: 2016-12-31T12:00:00+03:00
url: /2016/12/cayenne-40M4-released.html
--- 

Apache Cayenne team is glad to announce the latest milestone of Cayenne - 4.0.M. The new release features a number of important things:

* Stabilizes database reverse-engineering tools for DB-first ORM flow.
* Plugs holes and omissions in the fluent query API.
* Expands encryption capabilities to all data types.
* Improves transaction management API.
* Provides alternative binary protocols for ROP, greatly improving its performance. 
* Includes a new Modeler welcome screen.
* Fixes numerous bugs, updates docs, etc., etc. 

Cayenne can be downloaded from [here](/download.html). Make sure to consult [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.M4/docs/doc/src/main/resources/UPGRADE.txt) file before updating.

Before we start discussing individual features, a few words on the future development effort. Cayenne 4.0 is quickly approaching "beta" status. There's a good chance that the following release will be feature-complete and we will enter "beta" and associated code freeze of the runtime framework. 

Now the new things in a bit more detail:

<div class="pb-3"><!-- gap 3rem --></div>


### Fluent query API
These fluent queries are new in M4:

*SQLExec*

    // insert
    int inserted = SQLExec.query("INSERT INTO ARTIST (ARTIST_ID, ARTIST_NAME) " + 
      "VALUES (#bind($id), #bind($name))")
      .paramsArray(55, "a3")
      .update(context);
    
    // update
    int updated = SQLExec
      .query("UPDATE ARTIST SET ARTIST_NAME = 'b3' WHERE ARTIST_NAME = 'a3'")
      .update(context);

*MappedSelect*

    List<Artist> artists = MappedSelect.query("SelectArtists", Artist.class)
      .param("name", "artist1")
      .select(context);

*MappedExec*

    int[] updated = MappedExec.query("UpdateArtists").param("name", "artist2").update(context);

*ProcedureCall*

    // select
    List<Artist> artists = ProcedureCall.query("select_sp", Artist.class)
                    .param("name", "Artist")
                    .param("paintingPrice", 3000)
                    .limit(2).select(context);
    
    // update
    int updated = ProcedureCall.query("update_sp")
                    .param("paintingPrice", 3000).update(context);
    
    // call and get out parameters
    int outParam = ProcedureCall.query("out_sp")
                    .param("name", "Artist")
                    .call(context).getOutParam("artist_out");

<div class="pb-3"><!-- gap 3rem --></div>


### Reverse Engineering Improvements

There are a lot of improvements and bug fixes covering reverse engineering functionality (aka "DB-first flow"). There's still more work to do to make it perfect, but the API is starting to stabilize and the tools have already become very usable (as in actually used in production on many projects). Follow this [link](/docs/4.0/cayenne-guide/cayenne-guide-part4.html) to learn what DB-First flow is all about and how to use it.

<div class="pb-3"><!-- gap 3rem --></div>


### Cayenne Crypto Improvements

We've aded support for mapping encrypted columns to numbers, Strings, etc.

<div class="pb-3"><!-- gap 3rem --></div>


### Transaction control

Added TransactionListener to allow for better control of manual transactions. 

<div class="pb-3"><!-- gap 3rem --></div>


### ROP Improvements
With M4 it's much easier to plug external tools for ROP connectivity and serialization purposes. Jetty HTTP/1.1 and HTTP/2 Client and Protostuff have been already added to the Cayenne and are supported out of the box.

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* CAY-2051 Applying new Reverse Engineering to the Modeler
* CAY-2053 SQLExec fluent query API
* CAY-2060 Replace Query objects in DataMap with query descriptors
* CAY-2062 MappedSelect and MappedExec fluent query API
* CAY-2063 ProcedureCall fluent query API
* CAY-2065 Pluggable serialization and connectivity layers for ROP
* CAY-2073 Ordering.orderedList methods
* CAY-2074 Support for catalogs in stored procedures
* CAY-2076 Implement Jetty HTTP/1.1 and HTTP/2 Client support for ROP Client
* CAY-2083 Implement Protostuff as serialization service for Cayenne ROP
* CAY-2090 Untangle HttpRemoteService from ServiceContext thread local setup
* CAY-2100 Add supporting generated keys for PostgreSQL
* CAY-2102 EJBQL: db: path not supported in select columns
* CAY-2103 cayenne-crypto: support for mapping non-String and non-binary types
* CAY-2106 cayenne-crypto: allow DI contribution of type converters inside ValueTransformerFactory
* CAY-2107 cayenne-crypto: Lazy initialization of crypto subsystem
* CAY-2111 Unbind transaction object from the current thread for iterated queries
* CAY-2112 Expose callback for "performInTransaction"
* CAY-2113 cdbimport: Reverse-engineering reinstates previously ignored columns
* CAY-2114 cdbimport: object layer settings are not respected
* CAY-2115 DbLoader - allow loading DataMap without Obj layer
* CAY-2116 Split schema synchronization code in a separate module
* CAY-2118 cdbimport: drop support for the old style of table filtering
* CAY-2129 Modeler: reengineer dialog improvements
* CAY-2130 Stripping common name prefixes on reverse engineering
* CAY-2132 Adding SybaseSelectTranslator to support TOP/DISTINCT TOP in limited queries
* CAY-2133 ObjectNameGenerator refactoring - unifying relationship name generation
* CAY-2135 cdbimport: reset DbEntity catalogs / schemas to DataMap defaults
* CAY-2136 Allow Ordering.orderedList(…) methods to accept a Collection rather than only a List
* CAY-2160 Modeler: new welcome screen

<div class="pb-2"><!-- gap 2rem --></div>


#### Bug Fixes:

* CAY-2016 cdbimport: Rename table with toMany relationship causes migration error
* CAY-2064 Issue with BeanAccessor for classes with complex inheritance
* CAY-2066 Fixes for inner enums handling in ExtendedTypeMap
* CAY-2067 Cayenne 4.0 connection pool is occasionally running out of connections
* CAY-2070 Modeler sync function adds extraneous ObjRelationships inside the class hierarchy
* CAY-2078 Client code gen bug. Unnecessary DataMap class generation setting datamap gen to false.
* CAY-2080 Cayenne doesn't pick up reverse engineering file changes
* CAY-2084 ObjectIdQuery - no cache access polymorphism
* CAY-2086 SelectById.selectFirst stack overflow
* CAY-2087 PostCommitFilter is confused about changes made by Pre listeners
* CAY-2089 HTTP connections aren't always closed in new ROP implementation
* CAY-2097 NullPointerException while updating relationships for entities with vertical inheritance
* CAY-2101 DataContext.currentSnapshot() doesn't set snapshot entity name
* CAY-2105 Add missing elements to the reverseEngineering.xsd
* CAY-2108 cayenne-di: StackOverflow for decorator that takes Provider of the delegate
* CAY-2110 Obfuscated exception when processing iterated results
* CAY-2119 ProjectUpgrader test failure (Windows)
* CAY-2122 Vertical Inheritance: Cannot Insert Record For Implementing Class with Attribute And Relationship
* CAY-2125 SchemaUpdateStrategy doesn't work with multiple DataNodes
* CAY-2126 Modeler cannot upgrade project from v7 to v9
* CAY-2128 Modeler stored procedures are not imported
* CAY-2131 Modeler NullPointerException in reverse engineering when importing different catalogs in one datamap
* CAY-2138 NVARCHAR, LONGNVARCHAR and NCLOB types are missing from Firebird types.xml
* CAY-2141 Disjoint-by-id prefetch generates repeating ID conditions
* CAY-2143 NPE in BaseSchemaUpdateStrategy
* CAY-2144 cdbimport always fails for databases which don't support catalogs
* CAY-2146 Vertical inheritance: record still inserted into parent db table when child validation fails
* CAY-2148 Failure upgrading from 3.1 to M4
* CAY-2150 UI bug: PK generation custom sequence is getting reset
* CAY-2151 Migrate Database Schema: issue when no db is specified
* CAY-2153 Modeler Exception in save action after reverse engineering some complex DB schema
* CAY-2154 Migrate db: queries order