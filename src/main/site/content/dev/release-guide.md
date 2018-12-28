---
title: Release Guide
weight: 60
url: /dev/release-guide.html
---

This page describes the steps that a Cayenne Release Manager needs to
perform to prepare a release. The specifics of Cayenne release process is
that we are publishing both downloadable assemblies and Maven artifacts, so
we have to build and publish things twice. Both forms of Cayenne release
are also available for evaluation during the vote.

{{% gap %}}

## Prerequisites

* A release manager must have his public key appended to the KEYS file
checked in to source control and the key published on one of the public key servers.
More info can be found at [http://www.apache.org/dev/release-signing.html](http://www.apache.org/dev/release-signing.html)
* Make sure "apache-releases" repository is configured in
*~/.m2/settings.xml* and an appropriate password is setup. See [this page](http://www.apache.org/dev/publishing-maven-artifacts.html)
 for details.
* As Cayenne has modules which require Java 1.8, you should use Java 1.8 to perform the release.

{{% gap %}}


## Preparing Sources

* Edit `UPGRADE-NOTES.txt` if there is anything to add there.
* Update `RELEASE-NOTES.txt` with actual release name and current date as a release date.
* Check Sources Compliance with [RAT](http://creadur.apache.org/rat/). To run RAT,
download the distro and unpack it somewhere. You can run it directly, or use a convenience script available at the root of Cayenne 
source. Then read the report and fix any issues.

        cd cayenne
        ./rat.sh ~/Desktop/apache-rat-0.9/apache-rat-0.9.jar  > report.txt

{{% gap %}}
    

## Tagging the Repo and Releasing Maven Artifacts 


* Create a Git tag and Create Maven Staging Repository:

        cd cayenne
        mvn release:clean
        mvn release:prepare -DpreparationGoals="clean install" -DautoVersionSubmodules=true
        mvn release:perform -P gpg [-Dgpg.keyname=B8AF90BF]

* Close the staging repo. Login to [https://repository.apache.org/](https://repository.apache.org/) with
Apache ID/password, go to "Staging Repositories" page. Select a staging
repository that was just created during "*mvn release:perform*", click
"Close". Take a note of the freshly created staging repository URL. It will
be used by the people voting on Cayenne. It may look like this:
[https://repository.apache.org/content/repositories/orgapachecayenne-052/](https://repository.apache.org/content/repositories/orgapachecayenne-052/) 

{{% gap %}}


## Releasing Downloadable Assemblies

* Switch to the release tag created above.

* Build source package (it will be the basis for the binary packages built
in the next steps) :

        mvn clean install -Passembly,src
    
* Build binary assemblies. Take *"assembly/target/cayenne-XXX-src.tar.gz"*, unpack it somewhere, and
perform binary builds from the unpacked directory (NOT FROM GIT CHECKOUT). _Release manager may skip 
running unit tests from here, as shown
below, although release evaluators should use the src assembly for [unit testing](running-unit-tests.html)
 and other kinds of testing._ 
    
        mvn clean install -Passembly,generic -Dmaven.test.skip=true

        # You will need to do this on OS X, and use at least Java 1.8
        mvn clean install -Passembly,mac -Dmaven.test.skip=true

        # You will need to do this on Windows
        mvn clean install -Passembly,windows -Dmaven.test.skip=true

    For further details on a general Cayenne build process check [this page](building-cayenne.html).

* Signing assemblies

You can find additional information in official Apache [Release Distribution policy](http://www.apache.org/dev/release-distribution) 
and on [this page](http://www.apache.org/dev/release-signing.html). 
Release manager key must be in the project KEYS file. Signing is a manual
procedure not included in the Ant or Maven script. Here is how it might
work ("-u" option can be omitted if you have only one GPG key):

        gpg -a -b -u B8AF90BF cayenne-X.X.tar.gz
        gpg --print-md SHA512 cayenne-X.X.tar.gz > cayenne-X.X.tar.gz.sha512

* Assemblies, signature and checksum files are committed to the special SVN repo
  used for staging development releases: [https://dist.apache.org/repos/dist/dev/cayenne/](https://dist.apache.org/repos/dist/dev/cayenne/). 
  Use a separate folder for each release. For more info on this repository check [the infrastructure docs](http://apache.org/legal/release-policy.html#stage).

{{% gap %}}


## Voting

* The vote is started on the dev mailing list.
* All committers are encouraged to vote on releases. Committer votes will
be considered by the PMC (particularly -1 votes will be discussed) when
making the final decision, but are not binding.
* Each PMC member will do the following before voting on a release:
    * download the artifacts
    * verify GPG signature and sha512 checksum 
    * satisfy themselves that the source matches the appropriate Git tag.
This can be done by diffing the source against a recent git checkout.
    * satisfy themselves that the Apache licensing requirements are met (this
will usually be achieved by ensuring that all notices are in place and
verifying that the source matches Git since all commits to Git are possible
only if the committer has a CLA on file).
    * satisfy themselves that the binary distribution is sane and passes
basic usability tests. For example, that the Cayenne Modeler runs and the
main jar passes some basic tests.
    * satisfy themselves that the source passes agreed unit tests (either by
running them manually or verifying that CI service has run those tests against
the equivalent source). 

{{% gap %}}


## Publishing the Release

* Publish Maven artifacts. Go back to [https://repository.apache.org/](https://repository.apache.org/),
select the staging repo and click "Release".

* Publish downloadable assemblies by moving them to the release repo:

        $ svn mv https://dist.apache.org/repos/dist/dev/cayenne/X.X \
             https://dist.apache.org/repos/dist/release/cayenne/
    
{{% gap %}}


## After the release


* Delete a previous version of Cayenne release of the same branch from the dist server. 
  It should be already [archived by Apache] (http://www.apache.org/dev/release.html#when-to-archive). Do this with an svn command like this:

        $ svn rm https://dist.apache.org/repos/dist/release/cayenne/Y.Y

* [Tell Jira](https://issues.apache.org/jira/plugins/servlet/project-config/CAY/versions)
 that the release has been released. Ensure there is another milestone or
release target already created for further work, but this was probably
already done when a branch was created in preparation for release.
* If the release is significant, consider press releases to relevant news
sources
* Review the main website pages (front page and why-cayenne especially) to
add any new features
* Add new cayenne version and a news item to the Cayenne web site (see [CMS Guide]({{< ref "cms-guide.md#content-modifications" >}}))
* Send an email to the Cayenne user and developer lists
* Send a notification email to announce(at)apache.org
* Update http://en.wikipedia.org/wiki/Apache_Cayenne

{{% gap %}}

    
## Reference:
    
* Apache release publishing: http://www.apache.org/dev/release-publishing.html
* Apache Maven release publishing: http://www.apache.org/dev/publishing-maven-artifacts.html
* Apache RAT: https://creadur.apache.org/rat/
* Signing Releases: http://www.apache.org/dev/release-signing.html
