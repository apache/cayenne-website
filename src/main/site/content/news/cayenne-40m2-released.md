---
title: Cayenne 4.0 Milestone 2 Released
date: 2015-03-18T12:00:00+03:00
url: /2015/03/cayenne-40m2-released.html
--- 

This is a big and important new milestone release of the development branch of Apache Cayenne. Existing users may have noticed that we renamed version 3.2 to 4.0 as the scope had been vastly expanded. So 4.0.M2 is a direct successor of 3.2M1. There are tons of new features and bug fixes included. Below are just the main highlights. For more details read upgrade-guide.pdf and check out the full release notes further down.

Cayenne can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>


### Fluent Type-Safe Query API

Cayenne now provides a set of new fluent query classes: ObjectSelect, SQLSelect, SelectById. More will be coming in the future releases. Here is a simple example of a query selecting a single object by a given criteria:

{{< highlight java >}}
Artist a = ObjectSelect
    .query(Artist.class)
    .where(Artist.NAME.eq("Picasso"))
    .selectOne(context);
{{< /highlight >}}

 A related addition is positional bindings in Expression, SQLTemplate and the new query classes. Using the new API you'll avoid boilerplate in the most-commonly written Cayenne code, all this with full support for generics and type safety. The "old" style of bean-like queries (SelectQuery) is still supported.

<div class="pb-3"><!-- gap 3rem --></div>


### Powerful Automated Workflow with 'cdbimport'

'cdbimport' (a Maven/Ant task that generates DataMap from DB) was always there in Cayenne, just not very usable. In this release it was reworked to become a cornerstone of an automated workflow that allows you to keep mapping and Java classes always in sync with the underlying DB, and yet provide arbitrary customizations to the object layer.

<div class="pb-3"><!-- gap 3rem --></div>


### OSGI Support

All Cayenne runtime jars have proper OSGi manifests and can be used as OSGi bundles. Here is a [demo](https://github.com/andrus/cayenne-osgi-example) showing how to write an OSGi Cayenne app. The main trick is to add an OSGi module to Cayenne runtime that will take care of classloading, etc.:

    Module osgiModule = 
       OsgiModuleBuilder.forProject(Activator.class).withDriver(Driver.class).module();

<div class="pb-3"><!-- gap 3rem --></div>


### ServerRuntimeBuilder and Mapping-Free Runtime

We found that customizing ServerRuntime is a frequent task in most applications. Things like setting a proper DataSource, loading multiple projects into a single runtime, overriding a service here and there are all very common customizations. While all of those can be done via ServerRuntime constructor and custom DI modules, we decided to add some syntactic sugar to streamline configuration. Enter ServerRuntimeBuilder:

    ServerRuntime runtime = new ServerRuntimeBuilder("myproject")
        .addConfigs("cayenne-project1.xml", "cayenne-project2.xml")
        .addModule(binder -> binder.bind(JdbcEventLogger.class).toInstance(myLogger))
        .dataSource(myDataSource)
        .build();

 While we are on the topic of ServerRuntime, we now also have an ability to start a mapping-free runtime, which turns Cayenne into a powerful SQL execution stack without the ORM part (e.g. useful for unit tests).

<div class="pb-3"><!-- gap 3rem --></div>


### Transparent Database Cryptography with 'cayenne-crypto'

Cayenne now includes [cayenne-crypto.jar](https://search.maven.org/#artifactdetails|org.apache.cayenne|cayenne-crypto|4.0.M2|jar), that allows you to implement seamless data encryption. With a bit of extra configuration (as you may have guessed - another DI module) you get automatic encryption/decryption of data in certain columns:

    Module cryptoModule = new CryptoModuleBuilder()
       .keyStore("file:///mykeystore", "changeit".toCharArray(), "keyalias")
       .compress()
       .build();

 By default columns that start with 'CRYPTO_' are designated as encrypted, but this is [fully customizable](https://github.com/apache/cayenne/blob/master/cayenne-crypto/src/main/java/org/apache/cayenne/crypto/map/ColumnMapper.java). The rest of your application code doesn't need to worry about cryptography, and would look like a regular Cayenne application.

<div class="pb-3"><!-- gap 3rem --></div>


### DI Container Decorators

In addition to overriding services in DI container, now Cayenne would allow to supply decorators. True to the "smallest-footprint" DI philosophy, decorator approach is very simple and does not rely on proxies or class enhancement. Just implement the decorated interface and provide a constructor that takes a delegate instance being decorated:

	public class MyInterfaceDecorator implements MyInterface {

	    private MyInterface delegate;

	    public MyInterfaceDecorator(@Inject MyInterface delegate) {
	        this.delegate = delegate;
	    }

	    @Override
	    public String getName() {
	        return "<" + delegate.getName() + ">";
	    }
	}

	Module module = new Module() {

	    @Override
	    public void configure(Binder binder) {
	        binder.decorate(MyInterface.class).before(MyInterfaceDecorator.class);
	    }
	};

<div class="pb-3"><!-- gap 3rem --></div>


### Stability Improvements

We got rid of the hated "runtime" ObjRelationships that caused random issues, and fixed more than 30 other bugs.


<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* CAY-1267 Some changes to LogDialog
* CAY-1826 Merge Entity Attributes and Relationships tabs together with one toolbar.
* CAY-1839 Allow to link DataMaps to DataNodes from DataNode editor.
* CAY-1841 Filters for Left-hand project navigator
* CAY-1842 Remove Listeners support from the Modeler 
* CAY-1843 DataMap v7: Stop saving listeners in DataMap, add upgrade handler
* CAY-1845 Upgrade javadoc plugin to 2.9.1 
* CAY-1846 Reworking of callback mapping
* CAY-1847 Make ConverterFactory extensible
* CAY-1848 New method: ObjectContext.selectOne(Select query) 
* CAY-1851 Generate default serialVersionUID for generated java classes to avoid eclipse warnings
* CAY-1852 Straighten thread model and synchronization in the Modeler 
* CAY-1855 Iterated and paginated queries must print result counts 
* CAY-1856 Expression.expWithParameters does not work when parameters are placed in the inline collection 
* CAY-1860 In-memory matching of DataObjects against ObjectId or int
* CAY-1861 Remove runtime relationships
* CAY-1870 cgen - smarter default for 'superPkg' and 'destDir'
* CAY-1882 Porting to OSGi environment
* CAY-1883 Clean up Cayenne maven structure
* CAY-1886 cayenne-di module reorg, new exceptions
* CAY-1890 Remove Cayenne-level buffering when retrieving LOBs
* CAY-1894 Support native PK generation using sequences for H2 databases
* CAY-1899 ServerRuntimeBuilder
* CAY-1900 Allow DataNode name to be used as a root of SQLTemplate
* CAY-1901 Config-free ServerRuntime
* CAY-1904 Simple injection-friendly constructor for AuditableFilter
* CAY-1907 RowReaderFactory
* CAY-1908 Refactor all SQLActions to work with DataNode
* CAY-1911 BatchQuery refactoring - make Iterable
* CAY-1912 BatchQueryBuilder refactoring
* CAY-1913 Refactor org.apache.cayenne.access.trans into query-specific packages
* CAY-1914 Refactor EJBQL-related translators to a standalone 'org.apache.cayenne.access.translator.ejbql' package
* CAY-1915 BatchTranslator instead of performing bindings should return binding object whose values can be altered
* CAY-1916 cayenne-crypto module that enables data encryption for certain model attributes
* CAY-1918 Replace Oracle LOB hacks with JDBC 4.0 API
* CAY-1919 Split DataNode creation into a separate DataNodeFactory
* CAY-1920 DI: add support for decorators
* CAY-1921 Support for schema selection in 'Migrate Database Schema'
* CAY-1923 Optimize BatchTranslator - use fixed size array of BatchParameterBinding
* CAY-1925 cayenne-crypto: add optional compression to the encryption pipeline
* CAY-1928 Second INNER join generated for OUTER flattended relationships in disjoint prefetches
* CAY-1929 Property.outer method to build OUTER join properties
* CAY-1932 Improved Handling for Scalar Parameters Converting Expressions to EJBQL
* CAY-1933 Problems in Evaluating EJBQL Statements with Integral Literals > Integer.MAX_VALUE
* CAY-1934 A problem exists where the escape character is not conveyed in the EJBQL when toEJBQL() is invoked on the expression.
* CAY-1936 ServerRuntime.getDataSource() returning DataSource of a default DataNode
* CAY-1937 Make Transaction an interface
* CAY-1938 Create a DI factory for transactions, get rid of TransactionDelegate and modeler config for tx policies
* CAY-1939 DataDomain must use injectable TransactionManager
* CAY-1946 CDbimport improvements
* CAY-1949 Search in configuration fields (Catalog, Schema) in DbEntity
* CAY-1952 Undeprecate (actually restore) ObjectContext.deleteObject(..)
* CAY-1953 Redo ResultIteratorCallback to handle single row callback instead of iterator
* CAY-1954 Make Cayenne class constructor protected
* CAY-1958 SelectById - a new full-featured select query to get objects by id
* CAY-1959 ObjectSelect query - a fluent API alternative to SelectQuery
* CAY-1960 ExpressionFactory.exp(..) , and(..), or(..)
* CAY-1962 Implement CayenneTable column resize on double-click on the header separator
* CAY-1965 Change version from 3.2 to 4.0
* CAY-1966 SQLTemplate/SQLSelect positional parameter binding
* CAY-1967 Deprecate SQLTemplate parameter batches
* CAY-1968 SQLSelect cleanup and omissions
* CAY-1971 Variants of Property.like(..) : contains(..), startsWith(..), endsWith(..)
* CAY-1972 A property to override DataSources of multi-module projects 
* CAY-1981 Add support of JDBC 4.0 N-types (nchar, nvarchar, longnvarchar, nclob)
* CAY-1984 cdbimport doesn't flatten many to many relationships

<div class="pb-2"><!-- gap 2rem --></div>


### Bug Fixes:

* CAY-1480 Implement cross-db functional expressions
* CAY-1695 Unexpected null value in bidirectional one-to-one prefetch 
* CAY-1736 IllegalArgumentException when synchronizing entities in the Modeler
* CAY-1795 "Invisible" ObjAttribute in subclass
* CAY-1796 ROP: All entity's to-many relationships getting faulted from database when using it as a parameter in qualifier expression
* CAY-1797 NPE importing DataMap
* CAY-1798 ROP: Reverse relationships of prefetched entity objects are not filled during server to client objects conversion
* CAY-1799 ROP: Server can't deserialize LIKE expression with pattern already compiled
* CAY-1818 Fix copyright year in the Modeler "about" panel
* CAY-1834 Exception: ToManyList cannot be cast to DataObject 
* CAY-1857 Problem with hotkeys 
* CAY-1859 NullPointerException when importing EOModel 
* CAY-1863 Make determining whether a particular database type supports length adapter-specific not universal
* CAY-1866 Change in General Modeler Preferences reverts old settings to default value
* CAY-1868 Select contention with multiple contexts 
* CAY-1869 ResultIterator from cayenne-client dependency is subclassed from org.apache.cayenne.access.ResultIterator which is present only in cayenne-server dependency 
* CAY-1874 DB2 Procedure action ignores the first result set
* CAY-1877 In-memory evaluation of expression may fail with UnsupportedOpeartionException depending on order of nodes
* CAY-1880 objectStore snapshots never cleared from RefreshQuery when "use shared cache" unchecked
* CAY-1881 CayenneModeler (Mac version) doesn't work with Java 7
* CAY-1885 Null value in subclass's field.
* CAY-1905 Multi-step prefetching NPE : 1..N..1 with absent N and root with no qualifier
* CAY-1943 XML file not deleted when a DataMap is deleted from the project
* CAY-1961 Fix RemoveAction for DataMaps in ProjectTree
* CAY-1964 Fix convertAdditionalDataMaps() in CayenneGeneratorMojo.java
* CAY-1973 error while generating classes
* CAY-1974 Copy/Paste DbEntiry throws exception
* CAY-1978 ESCAPE clause should be included in LIKE parenthesis
* CAY-1979 Prefetches on Many-to-Many Relationships with Longvarchar
* CAY-1980 'mvn cayenne-modeler:run' seems to be broken in 4.0
* CAY-1988 ServerRuntimeBuilder: synthetic DataNode does not have domain's DataMaps linked
