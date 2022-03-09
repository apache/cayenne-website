---
title: Legacy Ant Unit Tests
url: /legacy-ant-unit-tests.html
markup: md
---
Cayenne provides a comprehensive suite of unit tests. To execute unit tests
you must first [get Cayenne from SVN](/dev/code-repository.html)
, install JDK 1.5 and obtain the latest Ant.

<a name="LegacyAntUnitTests-SummaryofBuildProperties"></a>
## Summary of Build Properties

These properties can be passed to ant build via *-DpropName=value*.

{.table .table-bordered}
Property | Description
---------|------------
*cayenne.test.connection* | Named connection source (see below)
*test.filter* | Running a subset of tests (see below)
*cayenne.test.schema.skip* | If "true", won't attempt to recreate the test database, i.e. the database must already be present.

<a name="LegacyAntUnitTests-RunningAgainstEmbeddedHSQLDB"></a>
## Running Against Embedded HSQLDB

No extra setup is required. Just run Ant:


    # cd cayenne/cayenne-ant
    # ant test


Optionally you may run JDK 1.4 tests only (e.g. if you don't have JDK 1.5
on your machine):


    # cd cayenne/cayenne-ant
    # ant test-1_4



This will use an embedded HSQLDB. Running tests against your own database
requires a few extra steps described below.

<a name="LegacyAntUnitTests-RunningAgainstaSpecificDatabase"></a>
## Running Against a Specific Database

<a name="LegacyAntUnitTests-Step1:ConfigureOneorMoreDataSources"></a>
#### Step 1: Configure One or More Data Sources

Create a directory *$HOME/.cayenne/* and place a file called
*connection.properties* in this directory. File contents should be
similar to this example:


    example1.cayenne.adapter = org.apache.cayenne.dba.mysql.MySQLAdapter
    example1.jdbc.username = someuser
    example1.jdbc.password = somepasswd
    example1.jdbc.url = jdbc:someurl1
    example1.jdbc.driver = com.xyz.MyDriverClass
    
    example2.cayenne.adapter = org.apache.cayenne.dba.oracle.OracleAdapter
    example2.jdbc.username = someuser
    example2.jdbc.password = somepasswd
    example2.jdbc.url = jdbc:someurl2
    example2.jdbc.driver = com.xyz.MyDriverClass


Each key starts with an identifier for a datasource. In the file above,
"example1" and "example2" are such identifiers. They can be arbitrary
strings without "." (dot) symbols.


<a name="LegacyAntUnitTests-Step2.RunTestsAgainstConfiguredDataSource"></a>
#### Step 2. Run Tests Against Configured Data Source


    # cd cayenne/cayenne-ant
    # ant test -Dcayenne.test.connection=example1


Substitute "example1" with a name of your data source configured in the
previous step. In case of total success, one of the last messages Ant
prints on console is BUILD SUCCESSFUL. If build fails, failure report is
generated in HTML format under
*cayenne/cayenne-ant/build/tests-report-example1/index.html* and can be
viewed using a web browser (again, substitute "example1" in this path with
the name of data source used).

<a name="LegacyAntUnitTests-FilteringTests"></a>
## Filtering Tests

To run only a subset of test cases, Ant-style pattern matching can be used.
A property called *test.filter* defines a set of class files to be run.
For instance to run only tests from the "tools" package, the following
startup parameters can be used:


    # cd cayenne/cayenne-ant
    # ant test -Dcayenne.test.connection=example1 -Dtest.filter="**/tools/*Tst.class"

