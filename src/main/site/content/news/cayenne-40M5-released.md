---
title: Cayenne 4.0 Milestone 5 Released
date: 2017-03-07T12:00:00+03:00
url: /2017/03/cayenne-40M5-released.html
--- 

Apache Cayenne team is glad to announce the latest milestone of Cayenne - 4.0.M5. 
The new release features a number of important things:

* New fluent API for SQL functions (including long-awaited **aggregate** functions).
* Auto-loading of additional Cayenne modules.
* New JCache module that allows to easily include any compatible cache provider.
* Further improvements and stabilization of database reverse-engineering tools.
* Fixes bugs, updates docs, etc. 

Cayenne can be downloaded from [here](/download.html). Make sure to consult [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.M5/docs/doc/src/main/resources/UPGRADE.txt) file before updating.

Before we start discussing individual features, a few words on the future development effort. 
Cayenne 4.0 is quickly approaching "beta" status. There's a good chance that the following release will be 
feature-complete and we will enter "beta" and associated code freeze of the runtime framework. 

Now the new things in a bit more detail:

<div class="pb-3"><!-- gap 3rem --></div>


### Fluent query API


These great additions to Fluent API are new in M5:

*ColumnSelect*

    List<String> names = ObjectSelect.query(Artist.class)
                         .column(Artist.ARTIST_NAME).select(context);

*Aggregate Functions*

    // easy way to select count
    long count = ObjectSelect.query(Artist.class).selectCount(context);
    
*GROUP BY .. HAVING*

    Property<Double> minPrice = Artist.PAINTING_ARRAY.dot(Painting.ESTIMATED_PRICE).min();
    
    // Object[0] is a name (String)
    // Object[1] is a price (Double)
    // GROUP BY clause is generated automatically based on the query semantics
    List<Object[]> nameAndMinPrice = ObjectSelect.query(Artist.class)
    				    .columns(Artist.ARTIST_NAME, minPrice)
    				    .having(minPrice.gt(2000.0))
    				    .select(context);
    				
*SQL Functions*
    
    Property<Integer> nameLength = Artist.ARTIST_NAME.length();
    List<Artist> artists = ObjectSelect.query(Artist.class, nameLength.gt(5))
                            .select(context);

<div class="pb-3"><!-- gap 3rem --></div>
    

### Reverse Engineering Improvements

We pushed DB reverse engineering functionality further. This time in addition to clearing bugs and perform smoother importing
we changed cdbimport plugin configuration to make it clearer and ready for future improvements we have in mind.

The plugin itself has changed it's name to *"cayenne-maven-plugin"*, so now you can use short commands like the following:
    
    mvn cayenne:cdbimport

**_Important note_**: please refer to [UPGRADE.txt](https://github.com/apache/cayenne/blob/4.0.M5/docs/doc/src/main/resources/UPGRADE.txt) for detailed changes in _cdbimport_ configuration.


<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* {{% jira 2139 %}} Upgrade HSQLDB dependency to the most recent version (2.3.4)
* {{% jira 2150 %}} Refactoring: ParameterBinding to contain ExtendedType property
* {{% jira 2163 %}} Property.path() , ExpressionFactory.pathExp()
* {{% jira 2164 %}} Relocate builder bootstrap methods from ServerRuntimeBuilder to ServerRuntime
* {{% jira 2165 %}} Explicit "contribution" API for easier expansion of DI collections and maps
* {{% jira 2166 %}} Auto-loading of Cayenne modules
* {{% jira 2168 %}} Split DbLoader to parts and clean it up
* {{% jira 2169 %}} Split DbMerger to parts and clean it up
* {{% jira 2170 %}} MergeToken sorting is highly unstable
* {{% jira 2172 %}} Cleanup Modeler import and migrate db actions
* {{% jira 2176 %}} Java 7 diamond class generation templates
* {{% jira 2177 %}} Sync auto generated state of PK between model and DB
* {{% jira 2187 %}} Support for the scalar and aggregate SQL functions in ObjectSelect API
* {{% jira 2197 %}} Update sqlite version and enable in-memory default config
* {{% jira 2212 %}} cdbimport cleanup and configuration schema refactoring
* {{% jira 2223 %}} JCacheQueryCache - a query cache provider to plug in JCache implementers
* {{% jira 2225 %}} Extensible CacheInvalidationFilter logic
* {{% jira 2228 %}} Deprecate multiple cache groups in caching and query API
* {{% jira 2231 %}} Support for collections in new functional expressions and old math expressions
* {{% jira 2232 %}} Proper conversion to String for new functional expressions
* {{% jira 2235 %}} Deprecate Query.getDataMap() method

<div class="pb-2"><!-- gap 2rem --></div>


#### Bug Fixes:

* {{% jira 2032 %}} SelectAction: DistinctResultIterator ignores flattened relationships
* {{% jira 2137 %}} When generating SQL from EJBQL, use "AND" to separate multiple join conditions
* {{% jira 2174 %}} Change FK attribute name cause ObjAttribute appear after Reverse Engineering
* {{% jira 2175 %}} AliasName used in EJBQLQuery is not working if it contains mixed case
* {{% jira 2183 %}} Newly created DbRelationship is unexpectedly renamed by the Modeler
* {{% jira 2199 %}} Modeler on Windows: The same project is displayed twice in "Recent Projects"
* {{% jira 2207 %}} Modeler: "Java Type" and "DbAttribute Path" are not saved with using TAB to move forward
* {{% jira 2221 %}} In-memory expression evaluation gives different result than select query
* {{% jira 2236 %}} Modeler Migrate DB Schema: unable to Reverse All Operations
* {{% jira 2238 %}} Modeler: Preserve manually set DbRelationship name when syncing with ObjEntity
* {{% jira 2242 %}} Vertical Inheritance: Cannot Insert Record For Implementing Class with Attribute And Relationship
