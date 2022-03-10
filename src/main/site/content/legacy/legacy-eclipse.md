---
title: Legacy Eclipse
url: /legacy-eclipse.html
markup: md
---
<a name="LegacyEclipse-UsingEclipsewithAntCayenne"></a>
## Using Eclipse with Ant Cayenne 
_(versions 1.2 and 2.0)_

<a name="LegacyEclipse-ConfiguringEclipseWorkspaceforCayenne"></a>
### Configuring Eclipse Workspace for Cayenne

* Download and install [Eclipse](http://wwww.eclipse.org)
. Eclipse 3.1.1 or newer is recommended, as there are some per-project
settings in repository that are not understood by older Eclipse.
* Install both JDK1.4 and 1.5. Some Cayenne projects below require JVM
1.5.x, and others - JVM 1.4.x. It is possible to develop all or parts of
Cayenne with just 1.5 or just 1.4, but make sure you understand what you
are doing.
* Set JVM 1.4 as default workspace JVM.
* Define *"JRE_LIB_15"* Eclipse variable (Preferences -> Java -> Build
Path -> Classpath Variable) to point to the JRE 1.5 class library (e.g.
*"JRE15_HOME/jre/lib/rt.jar"* on Windows and Linux or
*"/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Classes/classes.jar"*
on Mac OS X). Cayenne projects that are compatible with 1.5 rely on this
variable.


<a name="LegacyEclipse-CheckingOutEclipseProjects"></a>
### Checking Out Eclipse Projects

Under [cayenne folder](https://svn.apache.org/repos/asf/cayenne/main/branches/STABLE-2.0/cayenne/)
 in Subversion you'll find 4 Eclipse projects that need to be checked out
to the same workspace. You may skip projects marked as optional if you are
not planning to use/change them.


{.table .table-bordered}
Project Folder | JVM | Special Setup | Notes
---------------|-----|---------------|------
*/cayenne-java* | 1.4.x | n/a | Eclipse project containing main Cayenne source and library folders. Source and binary compatibility must be set to JDK 1.4.
*/cayenne-java-1.5* | 1.5.x | *JRE_LIB_15* variable | Eclipse projectcontaining Cayenne JDK 1.5 specific code. Requires "cayenne-java" project to be present in workspace. Source and binary compatibility must be set to JDK 1.5.
*/cayenne-other* | 1.5.x | *JRE_LIB_15* variable | Optional Eclipse project that contains Cayenne documentation, contrib folders and such.
*/cayenne-ant* | n/a | n/a | Eclipse project with Ant build files to build the entire Cayenne workspace. Needed if you are planning to build Cayenne with Ant outside of Eclipse (i.e. to create JAR files or run a test suite).

There are also various tutorials in "cayenne" folder that are not needed to
build the framework or the tools.
