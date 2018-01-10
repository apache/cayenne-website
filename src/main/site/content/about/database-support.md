---
title: Database Support
url: /database-support.html
markup: mmark
---

This page provides useful information about JDBC driver settings for various database. 
All databases below have custom Cayenne DbAdapters and are automatically recognized by Cayenne AutoAdapter.

{#db-support .table .table-bordered}
Database                                 | Driver Name                                                  | Sample URL                                                        | Notes         
-----------------------------------------|--------------------------------------------------------------|-------------------------------------------------------------------|-------------------------------
[DB2](http://www.ibm.com/db2/)           | com.<wbr>ibm.<wbr>db2.<wbr>jcc.<wbr>DB2<wbr>Driver                | jdbc:<wbr>db2:<wbr>//127.0.0.1:<wbr>50000<wbr>/dbname             |               
[Derby](http://db.apache.org/derby/)     | org.<wbr>apache.<wbr>derby.<wbr>jdbc.<wbr>Client<wbr>Driver  | jdbc:<wbr>derby:<wbr>//127.0.0.1<wbr>/testdb                      | client<wbr>/<wbr>server 
  	                                     | org.<wbr>apache.<wbr>derby.<wbr>jdbc.<wbr>Em<wbr>bedded<wbr>Driver| jdbc:<wbr>derby:<wbr>path-to-<wbr>db-dir;<wbr>create=<wbr>true    | em<wbr>bedd<wbr>ed      
[FrontBase](http://www.frontbase.com/)   | jdbc.<wbr>Front<wbr>Base.<wbr>FBJ<wbr>Driver 	                        | jdbc:<wbr>Front<wbr>Base:<wbr>//127.0.0.1<wbr>/dbname                  |
[HSQLDB](http://hsqldb.org/)             | org.<wbr>hsqldb.<wbr>jdbc<wbr>Driver 	                            | jdbc:<wbr>hsqldb:<wbr>hsql:<wbr>//127.0.0.1                       | client<wbr>/<wbr>server 
  	  	                                 | jdbc:<wbr>hsqldb:                                            | file:<wbr>/path-to-<wbr>hsql-db-<wbr>files                        | em<wbr>bedd<wbr>ed 
[H2](www.h2database.com/)                | org.<wbr>h2.<wbr>Driver 	                                    | jdbc:<wbr>h2:<wbr>mem:<wbr>myTestMem;<wbr>MVCC=<wbr>TRUE          | em<wbr>bedd<wbr>ed in-<wbr>me<wbr>mory
[Ingres](http://www.ingres.com/products/ingres-database.php)| com.<wbr>ingres.<wbr>jdbc.<wbr>Ingres<wbr>Driver | jdbc:<wbr>ingres:<wbr>//127.0.0.1<wbr>:II7<wbr>/dbname     |               
[MySQL](http://www.mysql.com/)           | com.<wbr>mysql.<wbr>jdbc.<wbr>Driver                         | jdbc:<wbr>mysql:<wbr>//127.0.0.1<wbr>/dbname 	                    |              
[OpenBase](www.openbase.com)             | com.<wbr>open<wbr>base.<wbr>jdbc.<wbr>Ob<wbr>Driver                    | jdbc:<wbr>open<wbr>base:<wbr>//127.0.0.1<wbr>/dbname 	                |              
[Oracle](http://www.oracle.com/)         | oracle.<wbr>jdbc.<wbr>driver.<wbr>Oracle<wbr>Driver          | jdbc:<wbr>oracle<wbr>:thin:<wbr>@//127.0.0.1<wbr>:1521<wbr>/dbname|	           
[PostgreSQL](http://www.postgresql.org/) | org.<wbr>postgre<wbr>sql.<wbr>Driver                              | jdbc:<wbr>postgre<wbr>sql:<wbr>//127.0.0.1<wbr>:5432<wbr>/dbname 	    |               
[SQLite 3.*](http://www.sqlite.org/)     | org.<wbr>sqlite.<wbr>JDBC                                    | jdbc:<wbr>sqlite:<wbr>path_<wbr>to_<wbr>dbfile 	                | driver from zentus<wbr>.com
[SQLServer](http://www.microsoft.com/sqlserver)| [com.<wbr>microsoft.<wbr>sqlserver.<wbr>jdbc.<wbr>SQLServer<wbr>Driver](http://msdn.microsoft.com/en-us/data/aa937724.aspx)| jdbc:<wbr>sql<wbr>server:<wbr>//127.0.0.1;<wbr>data<wbr>base<wbr>Name=<wbr>dbname 	| Micro<wbr>soft Driver
  	                                     | com.<wbr>micro<wbr>soft.<wbr>jdbc.<wbr>sql<wbr>server.<wbr>SQL<wbr>Server<wbr>Driver  | jdbc:<wbr>micro<wbr>soft:<wbr>sql<wbr>server:<wbr>//127.0.0.1<wbr>;data<wbr>base<wbr>Name<wbr>=dbname;<wbr>Select<wbr>Method<wbr>=cursor | Micro<wbr>soft Driver, SQL Server prior to 2005
  	                                     | net.<wbr>source<wbr>forge.<wbr>jtds.<wbr>jdbc.<wbr>Driver    | jdbc:<wbr>jtds:<wbr>sql<wbr>server:<wbr>//127.0.0.1<wbr>:5000<wbr>/dbname  | [jTDS Driver](http://jtds.sourceforge.net/) 
[Sybase](http://www.sybase.com/)         | com.<wbr>sybase.<wbr>jdbc3.<wbr>jdbc.<wbr>Syb<wbr>Driver          | jdbc:<wbr>sybase:<wbr>Tds:<wbr>127.0.0.1<wbr>:5000<wbr>/dbname    | Sy<wbr>base driver  
  	                                     | net.<wbr>source<wbr>forge.<wbr>jtds.<wbr>jdbc.<wbr>Driver 	| jdbc:<wbr>jtds:<wbr>sybase:<wbr>//127.0.0.1<wbr>:5000<wbr>/dbname;<wbr>useLOBs=<wbr>false;<wbr>TDS=4.2 | [jTDS Driver](http://jtds.sourceforge.net/)