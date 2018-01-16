---
title: Legacy Release Guide 2.0
url: /release-guide-2.0.html
---
Note that this page is of use for committers only. It describes the general
procedure of building a Cayenne release.

*THIS ONLY REFERS TO 2.0.x RELEASE BRANCH*

<a name="ReleaseGuide2.0-Prerequisites"></a>
## Prerequisites

Refer to the Prerequisites section of the [main release guide](/dev/release-guide.html)

<a name="ReleaseGuide2.0-PreparingSources"></a>
## Preparing Sources

* Export and commit the latest documentation per Documentation Guidelines
.

* Create a report in Jira listing all issues that are FIXED but not CLOSED,
paste its contents to RELEASE-NOTES.txt. Bulk-close all involved issues.
_Note that issues that affect multiple releases are usually closed
immediately when they are fixed, and the note is placed in
RELEASE-NOTES.txt immediately when this happens._

* Edit UPGRADE-NOTES.txt if there is anything to add there.

* Check Sources Compliance with ARAT. [ARAT](http://code.google.com/p/arat/)
 (A Release Audit Tool) is a Java tool written by Robert Burrell Donkin for
checking the release files for ASF licensing compliance. To run ARAT, [check it out of SVN](http://arat.googlecode.com/svn/tags/RAT_0_4/)
 _(we are using version 0.4)_, build with Ant, and run against unpacked
distro (or the release tag), read the report and fix any issues.

 
## Building Release Artifacts
    
* Tag `cayenne` directory under the repository trunk (assuming
    `release_version` is a version tag identifying the release, such as
    `"1.2B3"`):
   
   
   
     svn copy https://svn.apache.org/repos/asf/cayenne/main/trunk/cayenne \
     https://svn.apache.org/repos/asf/cayenne/main/tags/release_version/cayenne -m "tagging B3 release"
     
    
* Switch an existing working copy on a build machine to the release tag:
    If you don't have a local copy, do "checkout" instead of "switch". _Do not
    forget to switch the local copy back to the appropriate branch in case you
    are using it to make the code changes._

* Note that all Ant commands now must contain *"project.version"*
    property corresponding to the release version. The property is passed on
    the command line as *"-Dproject.version=2.0.x"*. See examples below.

* Run a test to make sure the checkout is ok:    
    Test with all supported databases listed [here](/database-support.html)
, or at least as many as possible.  See [Legacy Ant Unit Tests](/legacy-ant-unit-tests.html)
 for more details on how to test each of the various database servers with
legacy versions of Cayenne.
    
* Build a release for the target platform:
    
* Build Release Maven Bundles for ibiblio upload:
    
* Signing release
    For more info visit [this page](http://www.apache.org/dev/release-signing.html)
. Release manager key must be in the project KEYS file. Signing is a manual
procedure not included in the Ant or Maven script. Here is how it might
work ("-u" option can be omitted if you have only one GPG key):
    
<a name="ReleaseGuide2.0-Voting"></a>
## Voting

Refer to the Voting section of the [main release guide](/dev/release-guide.html)

<a name="ReleaseGuide2.0-PublishingtheRelease"></a>
## Publishing the Release

Copy KEYS file if updated to `"/www/www.apache.org/dist/cayenne/"`
_(TODO: automate publishing the keys - maybe create a "dist" site project?)_
    
    
    chmod 664 /www/www.apache.org/dist/cayenne/*

<a name="ReleaseGuide2.0-PublishingMavenArtifacts"></a>
### Publishing Maven Artifacts
_(TODO: automate rsync with Ant)_

Assuming release version is 2.0.2, on a *local machine* do 


    ant clean mvn-install -Dproject.version=2.0.2
    
    rsync -azv ~/.m2/repository/org/apache/cayenne/cayenne-nodeps/2.0.2 \
    people.apache.org:/www/people.apache.org/repo/m2-ibiblio-rsync-repository/org/apache/cayenne/cayenne-nodeps/
    
    rsync -azv ~/.m2/repository/org/apache/cayenne/cayenne/2.0.2 \
    people.apache.org:/www/people.apache.org/repo/m2-ibiblio-rsync-repository/org/apache/cayenne/cayenne/
    
    rsync -azv ~/.m2/repository/org/apache/cayenne/cayenne-client-nodeps/2.0.2 \
    people.apache.org:/www/people.apache.org/repo/m2-ibiblio-rsync-repository/org/apache/cayenne/cayenne-client-nodeps/
    
    rsync -azv ~/.m2/repository/org/apache/cayenne/cayenne-modeler/2.0.2 \
    people.apache.org:/www/people.apache.org/repo/m2-ibiblio-rsync-repository/org/apache/cayenne/cayenne-modeler/

<a name="ReleaseGuide2.0-Aftertherelease"></a>
## After the release

* Update the [DOAP file](http://svn.apache.org/repos/asf/cayenne/site/trunk/tlp-site/src/doap/cayenne.rdf)
 (held in the Cayenne svn) which will update
https://projects.apache.org/project.html?cayenne automatically
* Update Freshmeat with new release number
(http://freshmeat.net/projects/cayenne/)
* If the release is significant, consider press releases to relevant news
sources
* Review the main website pages (front page and why-cayenne especially) to
add any new features
* Add a news item to the Cayenne web site
* Send an email to the Cayenne user and developer lists
