---
title:  Running unit tests
---

Cayenne provides a comprehensive suite of unit tests. To execute unit tests
you must first get Cayenne from Git, install JDK 1.7 and obtain the latest
Maven.

### Prerequisites

Maven [build prerequisites and recommended settings](/dev/building-cayenne.html) apply here.    
    
### Running Against Embedded HSQLDB
    
No extra setup is required. Just run Maven:
    
    $ cd cayenne
    $ mvn install

or 

    $ cd cayenne
    $ mvn clean verify
    
### Running Against In-memory Database
 
Besides HSQLDB mentioned above Cayenne has preconfigured connection information for 
following databases that support in-memory mode:
   
* derby
* h2
* sqlite

For this databases you can run tests without any additional configuration by only specifying
*cayenneTestConnection* property that will activate required Maven profile:
 
    $ mvn verify -DcayenneTestConnection=derby    
    
### Running Against Database in Docker (only on Linux)

Another handy option to run Cayenne tests is with preconfigured docker profiles.
The only thing you need is to install Docker.

You can run tests with following *cayenneTestConnection* properties:
 
    $ mvn verify -DcayenneTestConnection=mysql-docker
or
    
    $ mvn verify -DcayenneTestConnection=postgres-docker    
    
### Running Against a Specific Database

Final option to run tests against any supported database is with manual configuration. 
    
#### Step 1. Install JDBC Driver Jars in a Local Maven Repo
    
Most commercial drivers are not present in the public Maven repositories.
So they have to be installed by the tester locally. The group and artifact
ids are arbitrarily assigned in the main Cayenne POM, so users must follow
the POM or the examples below.
    
**FrontBase:**

    $ mvn install:install-file -Dfile=frontbasejdbc.jar -DgroupId=com.frontbase \
           -DartifactId=frontbase-driver -Dversion=4.1 -Dpackaging=jar -DgeneratePom=true

**OpenBase:**

    $ mvn install:install-file -Dfile=OpenBaseJDBC.jar -DgroupId=com.openbase \
           -DartifactId=openbase-driver -Dversion=9 -Dpackaging=jar -DgeneratePom=true
    
**Oracle:**

    $ mvn install:install-file -Dfile=ojdbc5.jar -DgroupId=com.oracle \
           -DartifactId=oracle-driver -Dversion=11 -Dpackaging=jar -DgeneratePom=true

**SQLServer:**

    $ mvn install:install-file -Dfile=sqljdbc4.jar -DgroupId=com.microsoft \
           -DartifactId=sqlserver-driver -Dversion=4.0 -Dpackaging=jar -DgeneratePom=true

**Sybase:**

    $ mvn install:install-file -Dfile=jconn3.jar -DgroupId=com.sybase \
           -DartifactId=sybase-driver -Dversion=12 -Dpackaging=jar -DgeneratePom=true
    
#### Step 2. Run Tests Against Configured Data Source
    
Database type and connection information can be specified either on the
command line or via a configuration file. First let's look at the command
line options:
    
    $ mvn verify -DcayenneTestConnection=<profile_name> \
       -DcayenneAdapter=org.apache.cayenne.dba.mysql.MySQLAdapter \
       -DcayenneJdbcUsername=myuser \
       -DcayenneJdbcPassword=mypassword \
       -DcayenneJdbcUrl=jdbc:mysql://localhost/cayenne \
       -DcayenneJdbcDriver=com.mysql.jdbc.Driver

*cayenneTestConnection* is a property activating a DB-specific Maven
profile. *<profile_name>* can be one of:

* db2
* derby
* firebird
* frontbase
* h2
* ingres
* mysql
* openbase
* oracle
* postgres
* sqlite
* sqlserver
* sybase

Another way to store this information permanently for each profile is to
create a directory *$HOME/.cayenne/* and place a file called
*connection.properties* in this directory. File contents should be
similar to this example:

    mysql.cayenne.adapter = org.apache.cayenne.dba.mysql.MySQLAdapter
    mysql.jdbc.username = someuser
    mysql.jdbc.password = somepasswd
    mysql.jdbc.url = jdbc:mysql://mysql.host:3306/test_db?useUnicode=true&characterEncoding=UTF-8&generateSimpleParameterMetadata=true
    mysql.jdbc.driver = com.mysql.jdbc.Driver
    
    oracle.cayenne.adapter = org.apache.cayenne.dba.oracle.OracleAdapter
    oracle.jdbc.username = someuser
    oracle.jdbc.password = somepasswd
    oracle.jdbc.url = jdbc:oracle:thin:@//oracle.host:1521/XE
    oracle.jdbc.driver = oracle.jdbc.driver.OracleDriver
    
    postgres.adapter = org.apache.cayenne.dba.postgres.PostgresAdapter
    postgres.jdbc.username = someuser
    postgres.jdbc.password = somepasswd
    postgres.jdbc.url = jdbc:postgresql://postgresql.host:5432/test_db
    postgres.jdbc.driver = org.postgresql.Driver
    
    db2.adapter = org.apache.cayenne.dba.db2.DB2Adapter
    db2.jdbc.username = someuser
    db2.jdbc.password = somepasswd
    db2.jdbc.url = jdbc:db2://db2.host:50000/test_db
    db2.jdbc.driver = com.ibm.db2.jcc.DB2Driver
    
Each property starts with the Maven profile name ("mysql" and "oracle" in
the example above). Note that in this case you should still use
*cayenneTestConnection*. E.g.:
    
    $ mvn verify -DcayenneTestConnection=mysql