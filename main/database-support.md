---
title:  Database Support
permalink: /database-support
---

## Database Support

This page provides useful information about JDBC driver settings for various database. All databases below have custom Cayenne DbAdapters and are automatically recognized by Cayenne AutoAdapter.


| Database                                                     | Driver Name                                                                                        | Sample URL                                     | Notes                  |
|:-------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:-----------------------------------------------|:-----------------------|
| [DB2](http://www.ibm.com/db2/)                               | com.ibm.db2.jcc.DB2Driver                                                                          | jdbc:db2://127.0.0.1:50000/dbname              |                        |
| [Derby](http://db.apache.org/derby/)                         | org.apache.derby.jdbc.ClientDriver                                                                 | jdbc:derby://127.0.0.1/testdb                  | client/server          |
| org.apache.derby.jdbc.EmbeddedDriver                         | jdbc:derby:path-to-db-dir;create=true                                                              | embedded                                       |                        |
| [FrontBase](http://www.frontbase.com/)                       | jdbc.FrontBase.FBJDriver                                                                           | jdbc:FrontBase://127.0.0.1/dbname              |                        |
| [HSQLDB](http://hsqldb.org/)                                 | org.hsqldb.jdbcDriver                                                                              | jdbc:hsqldb:hsql://127.0.0.1                   | client/server          |
| jdbc:hsqldb:                                                 | file:/path-to-hsql-db-files                                                                        | embedded                                       |                        |
| [H2](www.h2database.com/)                                    | org.h2.Driver                                                                                      | jdbc:h2:mem:myTestMem;MVCC=TRUE                | embedded in-memory     |
| [Ingres](http://www.ingres.com/products/ingres-database.php) | com.ingres.jdbc.IngresDriver                                                                       | jdbc:ingres://127.0.0.1:II7/dbname             |                        |
| [MySQL](http://www.mysql.com/)                               | com.mysql.jdbc.Driver                                                                              | jdbc:mysql://127.0.0.1/dbname                  |                        |
| [OpenBase](www.openbase.com)                                 | com.openbase.jdbc.ObDriver                                                                         | jdbc:openbase://127.0.0.1/dbname               |                        |
| [Oracle](http://www.oracle.com/)                             | oracle.jdbc.driver.OracleDriver                                                                    | jdbc:oracle:thin:@//127.0.0.1:1521/dbname      |                        |
| [PostgreSQL](http://www.postgresql.org/)                     | org.postgresql.Driver                                                                              | jdbc:postgresql://127.0.0.1:5432/dbname        |                        |
| [SQLite 3.*](http://www.sqlite.org/)                         | org.sqlite.JDBC                                                                                    | jdbc:sqlite:path_to_dbfile                     | driver from zentus.com |
| [SQLServer](http://www.microsoft.com/sqlserver)              | [com.microsoft.sqlserver.jdbc.SQLServerDriver](http://msdn.microsoft.com/en-us/data/aa937724.aspx) | jdbc:sqlserver://127.0.0.1;databaseName=dbname | Microsoft Driver       |
| com.microsoft.jdbc.sqlserver.SQLServerDriver                 | jdbc:microsoft:sqlserver://127.0.0.1;databaseName=dbname;SelectMethod=cursor                       | Microsoft Driver, SQL Server prior to 2005     |                        |
| net.sourceforge.jtds.jdbc.Driver                             | jdbc:jtds:sqlserver://127.0.0.1:5000/dbname                                                        | [jTDS Driver](http://jtds.sourceforge.net/)    |                        |
| [Sybase](http://www.sybase.com/)                             | com.sybase.jdbc3.jdbc.SybDriver                                                                    | jdbc:sybase:Tds:127.0.0.1:5000/dbname          | Sybase driver          |
| net.sourceforge.jtds.jdbc.Driver                             | jdbc:jtds:sybase://127.0.0.1:5000/dbname;useLOBs=false;TDS=4.2                                     | [jTDS Driver](http://jtds.sourceforge.net/)    |                        |