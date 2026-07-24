+++
title = "Cayenne 4.0 Beta 1 Released"
date = 2017-06-12 17:38:42+03:00
+++

 

Apache Cayenne team is glad to announce a beta release of Cayenne 4.0. What this means for our users is
that now the API is frozen and it is safe to try it out even if you are not usually comfortable living 
on the bleeding edge of unstable releases. We'd like to hear from you about your upgrade experiences. 
And of course we'll strive to fix any remaining bugs before 4.0 goes final. To give you more confidence, 
we'd like to mention that most of the Cayenne developers have been using 4.0 in production for years. 

From now on the 4.0 branch will concentrate on bug fixes, Modeler improvements, documentation, web site
and other such things.

We are planning to publish a more detailed 4.0 comparision with 3.1 shortly. For now let's take a look at
things that have changed since the late milestone - M5:

* A native **Gradle Plugin**.
* Fresh **Modeler design** (along with many small UI improvements and bug fixes).
* A switch from _commons-logging_ to **_SLF4J_** API
* Optional **HMAC** in crypto module
* Numerous bug fixes, updated docs, etc. 

Cayenne can be downloaded from [here]({{< ref "about/download.md" >}}). Make sure to consult [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.B1/docs/doc/src/main/resources/UPGRADE.txt) file before updating.

BTW, here is an example of the Gradle plugin use :

    buildscript {
        repositories {
            mavenCentral()
        }
        dependencies {
            classpath group: 'org.apache.cayenne.plugins', name: 'cayenne-gradle-plugin', version: '4.0.B1'
        }
    }
    
    apply plugin: 'org.apache.cayenne'

    cayenne.defaultDataMap 'datamap.map.xml'
    
    dependencies {
        compile cayenne.dependency('server')
        compile cayenne.dependency('java8')
    }
    
    
<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* [CAY-1873](https://issues.apache.org/jira/browse/CAY-1873) Move DataDomain cache configuration from the Modeler and into DI
* [CAY-1891](https://issues.apache.org/jira/browse/CAY-1891) Modeler: Add To-Many Warning
* [CAY-1892](https://issues.apache.org/jira/browse/CAY-1892) Modeler: Add Relationship Data Type Warning
* [CAY-2057](https://issues.apache.org/jira/browse/CAY-2057) Modeler: Clean up OS X version
* [CAY-2109](https://issues.apache.org/jira/browse/CAY-2109) cayenne-crypto: add value authentication (HMAC) 
* [CAY-2210](https://issues.apache.org/jira/browse/CAY-2210) Query cache: incorrect cache key for queries with custom value objects
* [CAY-2255](https://issues.apache.org/jira/browse/CAY-2255) ObjectSelect improvement: columns as full entities
* [CAY-2258](https://issues.apache.org/jira/browse/CAY-2258) DI: type-safe binding of List and Map
* [CAY-2259](https://issues.apache.org/jira/browse/CAY-2259) QueryCache: support for referencing type-safe caches
* [CAY-2261](https://issues.apache.org/jira/browse/CAY-2261) Replace NamedQuery with MappedXYZ in *datamap.vm
* [CAY-2262](https://issues.apache.org/jira/browse/CAY-2262) Module auto-loading
* [CAY-2266](https://issues.apache.org/jira/browse/CAY-2266) Move EventBridge implementations into autoloadable modules
* [CAY-2267](https://issues.apache.org/jira/browse/CAY-2267) Contribute lifecycle events listeners via DI
* [CAY-2268](https://issues.apache.org/jira/browse/CAY-2268) DI: Refactor ListBuilder API ambiguities for before() / after() bindings
* [CAY-2269](https://issues.apache.org/jira/browse/CAY-2269) Add support for date/time components extraction in expression functions
* [CAY-2270](https://issues.apache.org/jira/browse/CAY-2270) Update function support in expression parser
* [CAY-2271](https://issues.apache.org/jira/browse/CAY-2271) ColumnSelect: support for prefetch and limit
* [CAY-2272](https://issues.apache.org/jira/browse/CAY-2272) ColumnSelect: methods to manually control DISTINCT clause
* [CAY-2274](https://issues.apache.org/jira/browse/CAY-2274) Modeler: Validate case when dependent PK is marked as “generated”
* [CAY-2277](https://issues.apache.org/jira/browse/CAY-2277) Create ClientRuntime with ClientRuntimeBuilder just like ServerRuntime
* [CAY-2278](https://issues.apache.org/jira/browse/CAY-2278) Extract cayenne-postcommit module from cayenne-lifecycle
* [CAY-2280](https://issues.apache.org/jira/browse/CAY-2280) Switch from commons-logging to slf4j
* [CAY-2295](https://issues.apache.org/jira/browse/CAY-2295) "Sync ObjEntity with DbEntity" and "View related DbEntity" buttons aren't disabled, if DbEntity doesn't have ObjEntity
* [CAY-2296](https://issues.apache.org/jira/browse/CAY-2296) cayenne-crypto: Get java type for DbAttribute bound to ObjAttributes with the same type
* [CAY-2300](https://issues.apache.org/jira/browse/CAY-2300) Modeler: New icons and design improvements
* [CAY-2302](https://issues.apache.org/jira/browse/CAY-2302) Rename postcommit module and its content to commitlog

<div class="pb-2"><!-- gap 2rem --></div>


### Bug Fixes:

* [CAY-2021](https://issues.apache.org/jira/browse/CAY-2021) cdbimport: detect when same FK constraint is defined twice
* [CAY-2077](https://issues.apache.org/jira/browse/CAY-2077) Bug in CayenneRuntimeException using wrong specified string in Formatter
* [CAY-2094](https://issues.apache.org/jira/browse/CAY-2094) SelectById query doesn't work from ROP client
* [CAY-2161](https://issues.apache.org/jira/browse/CAY-2161) 'Not for Client Use' option is ignored at Class Generation
* [CAY-2171](https://issues.apache.org/jira/browse/CAY-2171) Modeler: Undo db Entity Sync throws error
* [CAY-2208](https://issues.apache.org/jira/browse/CAY-2208) SQLTemplate: LEFT JOIN to a subset of a table returns nulls for entries that don't have a match in the subset
* [CAY-2230](https://issues.apache.org/jira/browse/CAY-2230) Error using connection to postgresql with db schema in DB URL
* [CAY-2240](https://issues.apache.org/jira/browse/CAY-2240) Modeler: issue with cursor rendering for EJBQL query
* [CAY-2243](https://issues.apache.org/jira/browse/CAY-2243) ObjectContext.getGraphManager().unregisterObject() inconsistencies
* [CAY-2250](https://issues.apache.org/jira/browse/CAY-2250) Remove: Incorrect text in Confirm Remove message when cursor is set on attribute row
* [CAY-2256](https://issues.apache.org/jira/browse/CAY-2256) Cannot Save/Insert an Object With null Flattened (complex) toOne Relationship (see also [CAY-2146](https://issues.apache.org/jira/browse/CAY-2146))
* [CAY-2265](https://issues.apache.org/jira/browse/CAY-2265) ServerRuntime.builder() fails to set default runtime name when a the project file doesn't follow recognized pattern
* [CAY-2273](https://issues.apache.org/jira/browse/CAY-2273) Modeler: default suggested cgen location is rooted in subpackage
* [CAY-2275](https://issues.apache.org/jira/browse/CAY-2275) Documentation: tutorial is out of sync with 4.0.M5 version
* [CAY-2276](https://issues.apache.org/jira/browse/CAY-2276) PrePersist listener registered as PostPersist in LifecycleCallbackRegistry.addListener(Class<?>, LifecycleListener)
* [CAY-2279](https://issues.apache.org/jira/browse/CAY-2279) cdbimport: skip PK comparison for VIEWs
* [CAY-2281](https://issues.apache.org/jira/browse/CAY-2281) ObjEntity attribute overrides are never deleted
* [CAY-2284](https://issues.apache.org/jira/browse/CAY-2284) Expression likeIgnoreCase can't handle unicode chars in in-memory evaluation
* [CAY-2286](https://issues.apache.org/jira/browse/CAY-2286) Filter out inherited ObjEntities from sync with DbEntity
* [CAY-2326](https://issues.apache.org/jira/browse/CAY-2326) DI: can't override List/Map elements from another Module
