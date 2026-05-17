---
title: Running Unit Tests
weight: 70
url: /dev/running-unit-tests.html
---

Cayenne provides a comprehensive suite of unit and integration tests. To
execute tests you must first get Cayenne from Git and satisfy the [Maven build
prerequisites](/dev/building-cayenne.html)
    
## Running Against a Test Database

The *cayenneTestConnection* property selects the database backend for tests. By default it is *hsql*, so it can be omitted:
    
    $ mvn verify


The following are in-memory database backends and can be executed without additional setup:

* hsql
* h2
* derby
* sqlite
 
    $ mvn verify -DcayenneTestConnection=derby

Cayenne also has preconfigured backends that it starts on Docker (so Docker must be installed and running) :

* mysql
* mariadb
* postgres
* sqlserver
* oracle
* db2

    $ mvn verify -DcayenneTestConnection=mysql

You can override the default Docker image tag for Testcontainers-backed
databases with *cayenneTestDbVersion*:

    $ mvn verify -DcayenneTestConnection=mysql -DcayenneTestDbVersion=8.4

{{% gap %}}


## Using a Custom Database

You can configure your own database to be used with tests instead of the built-in options by following these steps:

{{%gap 1l2 %}}

    
### Install Special Drivers
    
Most drivers used by Cayenne tests are available from Maven Central. A few
commercial drivers still have to be installed by the tester locally. The group
and artifact ids are assigned in the main Cayenne POM, so users must follow the
POM or the examples below.
    
**FrontBase:**

    $ mvn install:install-file -Dfile=frontbasejdbc.jar -DgroupId=com.frontbase \
           -DartifactId=frontbase-driver -Dversion=4.1 -Dpackaging=jar -DgeneratePom=true

**Ingres:**

    $ mvn install:install-file -Dfile=ingres-jdbc.jar -DgroupId=com.ingres \
           -DartifactId=ingres-driver -Dversion=4.0.7 -Dpackaging=jar -DgeneratePom=true

**Sybase:**

    $ mvn install:install-file -Dfile=jconn3.jar -DgroupId=com.sybase \
           -DartifactId=sybase-driver -Dversion=12 -Dpackaging=jar -DgeneratePom=true

{{% gap 3l2 %}}
    
### Define DataSource Explicitly with CLI Arguments
    
Database connection information can be specified either on the command line or
via a configuration file. Built-in datasource names may also be overridden this
way. First let's look at the command line options:
    
    $ mvn verify 
       -DcayenneJdbcUsername=myuser \
       -DcayenneJdbcPassword=mypassword \
       -DcayenneJdbcUrl=jdbc:mysql://localhost/cayenne \
       -DcayenneJdbcDriver=com.mysql.cj.jdbc.Driver

You can still use `-DcayenneTestConnection=<connection_name>` here to pick an existing profile, and simply override some of its
setting.

### Define DataSource Explicitly in `connection.properties`

Another way to store this information permanently for each connection name is
to create a directory *$HOME/.cayenne/* and place a file called
*connection.properties* in this directory. File contents should be similar to
this example:

    mysql.jdbc.username = someuser
    mysql.jdbc.password = somepasswd
    mysql.jdbc.url = jdbc:mysql://mysql.host:3306/test_db?useUnicode=true&characterEncoding=UTF-8&generateSimpleParameterMetadata=true
    mysql.jdbc.driver = com.mysql.cj.jdbc.Driver
    
    postgres.jdbc.username = someuser
    postgres.jdbc.password = somepasswd
    postgres.jdbc.url = jdbc:postgresql://postgresql.host:5432/test_db
    postgres.jdbc.driver = org.postgresql.Driver
    
    oracle.jdbc.username = someuser
    oracle.jdbc.password = somepasswd
    oracle.jdbc.url = jdbc:oracle:thin:@//oracle.host:1521/XE
    oracle.jdbc.driver = oracle.jdbc.OracleDriver

    sqlserver.jdbc.url = jdbc:sqlserver://sqlserver.host:1433;databaseName=test_db
    sqlserver.jdbc.driver = com.microsoft.sqlserver.jdbc.SQLServerDriver
    sqlserver.jdbc.username = someuser
    sqlserver.jdbc.password = somepasswd
    
    db2.jdbc.username = someuser
    db2.jdbc.password = somepasswd
    db2.jdbc.url = jdbc:db2://db2.host:50000/test_db
    db2.jdbc.driver = com.ibm.db2.jcc.DB2Driver
    
Each property starts with the connection name ("mysql" and "oracle" in the
example above). Note that in this case you should still use
*cayenneTestConnection*. E.g.:
    
    $ mvn verify -DcayenneTestConnection=mysql

{{% gap %}}


## Legacy Configuration

In Cayenne 4.2 and earlier the DB adapter class had to be configured explicitly for
custom datasources. This is the main difference from current Cayenne versions:
newer versions detect the adapter from the JDBC connection, while Cayenne 4.2
expects you to provide it.

For those versions, when passing connection settings on the command line, use
*cayenneAdapter* in addition to the JDBC properties:

    $ mvn verify -DcayenneTestConnection=<connection_name> \
       -DcayenneAdapter=org.apache.cayenne.dba.mysql.MySQLAdapter \
       -DcayenneJdbcUsername=myuser \
       -DcayenneJdbcPassword=mypassword \
       -DcayenneJdbcUrl=jdbc:mysql://localhost/cayenne \
       -DcayenneJdbcDriver=com.mysql.cj.jdbc.Driver

In *$HOME/.cayenne/connection.properties*, Cayenne 4.2 expects the same
connection-name prefix, but also needs an adapter key. For example, this is a
current Cayenne 5.0 style entry:

    mysql.jdbc.username = someuser
    mysql.jdbc.password = somepasswd
    mysql.jdbc.url = jdbc:mysql://mysql.host:3306/test_db
    mysql.jdbc.driver = com.mysql.cj.jdbc.Driver

The Cayenne 4.2 version must add *mysql.adapter*:

    mysql.adapter = org.apache.cayenne.dba.mysql.MySQLAdapter
    mysql.jdbc.username = someuser
    mysql.jdbc.password = somepasswd
    mysql.jdbc.url = jdbc:mysql://mysql.host:3306/test_db
    mysql.jdbc.driver = com.mysql.cj.jdbc.Driver

The even older *mysql.cayenne.adapter* key is also recognized as a legacy alias.

Testcontainers-backed profiles are another key-name difference. Cayenne 4.2
used the *-tc* suffix:

    $ mvn verify -DcayenneTestConnection=mysql-tc

Current Cayenne uses the database name without the suffix:

    $ mvn verify -DcayenneTestConnection=mysql

The same old-vs-new pattern applies to other Testcontainers-backed databases,
for example *postgres-tc* became *postgres*, and *sqlserver-tc* became
*sqlserver*.
