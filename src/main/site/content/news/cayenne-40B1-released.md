---
title: Cayenne 4.0 Beta 1 Released
date: 2017-06-12T17:38:42+03:00
url: /2017/06/cayenne-40B1-released.html
--- 

Apache Cayenne team is glad to announce a beta release of Cayenne 4.0. What this means for our users is
that now the API is frozen and it is safe to try it out even if you are not usually confortable living 
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

* {{% jira 1873 %}} Move DataDomain cache configuration from the Modeler and into DI
* {{% jira 1891 %}} Modeler: Add To-Many Warning
* {{% jira 1892 %}} Modeler: Add Relationship Data Type Warning
* {{% jira 2057 %}} Modeler: Clean up OS X version
* {{% jira 2109 %}} cayenne-crypto: add value authentication (HMAC) 
* {{% jira 2210 %}} Query cache: incorrect cache key for queries with custom value objects
* {{% jira 2255 %}} ObjectSelect improvement: columns as full entities
* {{% jira 2258 %}} DI: type-safe binding of List and Map
* {{% jira 2259 %}} QueryCache: support for referencing type-safe caches
* {{% jira 2261 %}} Replace NamedQuery with MappedXYZ in *datamap.vm
* {{% jira 2262 %}} Module auto-loading
* {{% jira 2266 %}} Move EventBridge implementations into autoloadable modules
* {{% jira 2267 %}} Contribute lifecycle events listeners via DI
* {{% jira 2268 %}} DI: Refactor ListBuilder API ambiguities for before() / after() bindings
* {{% jira 2269 %}} Add support for date/time components extraction in expression functions
* {{% jira 2270 %}} Update function support in expression parser
* {{% jira 2271 %}} ColumnSelect: support for prefetch and limit
* {{% jira 2272 %}} ColumnSelect: methods to manually control DISTINCT clause
* {{% jira 2274 %}} Modeler: Validate case when dependent PK is marked as “generated”
* {{% jira 2277 %}} Create ClientRuntime with ClientRuntimeBuilder just like ServerRuntime
* {{% jira 2278 %}} Extract cayenne-postcommit module from cayenne-lifecycle
* {{% jira 2280 %}} Switch from commons-logging to slf4j
* {{% jira 2295 %}} "Sync ObjEntity with DbEntity" and "View related DbEntity" buttons aren't disabled, if DbEntity doesn't have ObjEntity
* {{% jira 2296 %}} cayenne-crypto: Get java type for DbAttribute bound to ObjAttributes with the same type
* {{% jira 2300 %}} Modeler: New icons and design improvements
* {{% jira 2302 %}} Rename postcommit module and its content to commitlog

<div class="pb-2"><!-- gap 2rem --></div>


### Bug Fixes:

* {{% jira 2021 %}} cdbimport: detect when same FK constraint is defined twice
* {{% jira 2077 %}} Bug in CayenneRuntimeException using wrong specified string in Formatter
* {{% jira 2094 %}} SelectById query doesn't work from ROP client
* {{% jira 2161 %}} 'Not for Client Use' option is ignored at Class Generation
* {{% jira 2171 %}} Modeler: Undo db Entity Sync throws error
* {{% jira 2208 %}} SQLTemplate: LEFT JOIN to a subset of a table returns nulls for entries that don't have a match in the subset
* {{% jira 2230 %}} Error using connection to postgresql with db schema in DB URL
* {{% jira 2240 %}} Modeler: issue with cursor rendering for EJBQL query
* {{% jira 2243 %}} ObjectContext.getGraphManager().unregisterObject() inconsistencies
* {{% jira 2250 %}} Remove: Incorrect text in Confirm Remove message when cursor is set on attribute row
* {{% jira 2256 %}} Cannot Save/Insert an Object With null Flattened (complex) toOne Relationship (see also {{% jira 2146 %}})
* {{% jira 2265 %}} ServerRuntime.builder() fails to set default runtime name when a the project file doesn't follow recognized pattern
* {{% jira 2273 %}} Modeler: default suggested cgen location is rooted in subpackage
* {{% jira 2275 %}} Documentation: tutorial is out of sync with 4.0.M5 version
* {{% jira 2276 %}} PrePersist listener registered as PostPersist in LifecycleCallbackRegistry.addListener(Class<?>, LifecycleListener)
* {{% jira 2279 %}} cdbimport: skip PK comparison for VIEWs
* {{% jira 2281 %}} ObjEntity attribute overrides are never deleted
* {{% jira 2284 %}} Expression likeIgnoreCase can't handle unicode chars in in-memory evaluation
* {{% jira 2286 %}} Filter out inherited ObjEntities from sync with DbEntity
* {{% jira 2326 %}} DI: can't override List/Map elements from another Module
