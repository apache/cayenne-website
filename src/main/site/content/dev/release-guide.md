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
More info can be found at [https://www.apache.org/dev/release-signing.html](https://www.apache.org/dev/release-signing.html)
* Make sure "apache-releases" repository is configured in
*~/.m2/settings.xml* and an appropriate password is setup. See [this page](https://www.apache.org/dev/publishing-maven-artifacts.html)
 for details.
* Cayenne 5.0 requires Java 21, so the release must be built with JDK 21 or newer.
* Write access to [apache/cayenne](https://github.com/apache/cayenne) on GitHub (to run the `release dist`
  workflow). The [GitHub CLI](https://cli.github.com/) (`gh`) is handy to download its results, but optional.
* An SVN client, to stage the assemblies in [https://dist.apache.org/repos/dist/](https://dist.apache.org/repos/dist/).

{{% gap %}}


## Preparing Sources

* Edit `UPGRADE.md` if there is anything to add there. (Notes for 4.2 and older live in a separate
`UPGRADE-4.2-and-older.md` and are normally left untouched.)
* Update `RELEASE-NOTES.txt` with actual release name and current date as a release date.
* Check Sources Compliance with [RAT](https://creadur.apache.org/rat/). The Apache RAT Maven plugin
  is already configured in Cayenne:
  ```bash
  cd cayenne
  mvn apache-rat:check
  ```
  Rat writes the report to `target/rat.txt`. Read it and fix any issues. 
  Prefer adding a missing license header over adding an exclusion;  
  when an exclusion really is warranted it goes into `build-tools/rat-excludes`.

{{% gap %}}
    

## Tagging the Repo and Releasing Maven Artifacts 


* Create a Git tag and Create Maven Staging Repository:
  ```bash
  cd cayenne
  mvn release:clean
  mvn release:prepare -DpreparationGoals="clean install" -DautoVersionSubmodules=true
  mvn release:perform [-Dgpg.keyname=B8AF90BF]
  ```

  `release:perform` activates the `release` profile on its own (`releaseProfiles` in the root `pom.xml`).
  The profile (named `gpg` prior to 5.0-M4) does two things: it GPG-signs the artifacts,
  and it attaches a `-sources.jar` and a `-javadoc.jar`. `release:prepare` also pushes the release tag,
  which is the input for the next step.

* Close the staging repo. Login to [https://repository.apache.org/](https://repository.apache.org/) with
Apache ID/password, go to "Staging Repositories" page. Select a staging
repository that was just created during "*mvn release:perform*", click
"Close". Take a note of the freshly created staging repository URL. It will
be used by the people voting on Cayenne. It may look like this:
[https://repository.apache.org/content/repositories/orgapachecayenne-052/](https://repository.apache.org/content/repositories/orgapachecayenne-052/) 

{{% gap %}}


## Releasing Downloadable Assemblies

The assemblies are built by the `release dist` GitHub workflow from the release tag. Per the Apache
[Release Distribution policy](https://www.apache.org/dev/release-distribution) they are **not** signed in CI:
the release manager downloads them and signs them locally with their own key.

* Run the workflow. On GitHub go to Actions → **release dist** → *Run workflow*, keep `master` as the branch and
  enter the release tag, e.g. `5.0-RC1`. Other inputs:
    * `java-version` - JDK to build with, `21` by default.
    * `sign-mac` - sign and notarize the Mac app. Not available yet, leave it off.
    * `dry-run` - for testing the workflow in a fork, see below.

  The workflow checks that the POM version at the tag equals the tag and is not a SNAPSHOT, runs RAT, builds the
  source release and checks its contents against git. Then it unpacks the source release and builds the generic,
  Mac and Windows assemblies from it (not from the git checkout), restoring the Gradle wrapper that is left out of
  the source release. Finally it writes a `.sha512` for each file.

* When the run is green, its summary shows the tag and commit, lists the files with their size and SHA-512, and
  gives the commands for the next two steps.
  Download the `cayenne-X.X-dist` artifact (it is kept for 30 days):
  ```bash
  gh run download <run-id> --repo apache/cayenne --name cayenne-X.X-dist --dir cayenne-X.X-dist
  ```
  Without `gh`, download it from the *Artifacts* section at the bottom of the run page. GitHub serves it as a zip,
  unpack it into a `cayenne-X.X-dist` folder:
  ```bash
  unzip cayenne-X.X-dist.zip -d cayenne-X.X-dist
  ```

* Sign the files, from a checkout of the release tag (more on signing [here](https://www.apache.org/dev/release-signing.html)):
  ```bash
  build-tools/release/sign-and-stage.sh cayenne-X.X-dist X.X [gpg-key-id]
  ```
  The script verifies the checksums, writes an ASCII-armored detached signature (`.asc`) for each file and verifies
  it, checks that your key is in `KEYS`, and prints (does not run) the `svn` commands to stage the files.

* Stage the assemblies, signatures and checksums in the SVN repo used for staging development releases:
  [https://dist.apache.org/repos/dist/dev/cayenne/](https://dist.apache.org/repos/dist/dev/cayenne/), in a
  separate folder for each release (see [the infrastructure docs](https://apache.org/legal/release-policy.html#stage)).
  These are the commands printed by the script:
  ```bash
  svn checkout --depth=empty https://dist.apache.org/repos/dist/dev/cayenne cayenne-dist-dev
  cd cayenne-dist-dev
  svn mkdir X.X
  cp ../cayenne-X.X-dist/cayenne-X.X* X.X/
  svn add X.X/*
  svn commit -m "Cayenne X.X release candidate"
  ```
  Then check `https://dist.apache.org/repos/dist/dev/cayenne/X.X/` in a browser.

* To test the workflow in a fork, run it with `dry-run`: it then skips the repository check and accepts a
  SNAPSHOT version at the tag. Don't use the results of such a run for a release.

### Building the assemblies manually

*NOTE*: Only needed if the GitHub workflow can't be used. 

_Release manager may skip running unit tests here, although release
evaluators should use the src assembly for [unit testing](running-unit-tests.html) and other kinds of testing._
For further details on a general Cayenne build process check [this page](building-cayenne.html).

* Check out the release tag and build the source package, the basis for the binary packages:
  ```bash
  git clone https://github.com/apache/cayenne.git --branch "X.X" --depth 1
  cd cayenne
  mvn clean install -Passembly,src
  ```

* Unpack *cayenne-assembly/target/cayenne-X.X-src.tar.gz* and do the binary builds from the unpacked directory
  (NOT FROM GIT CHECKOUT). There are no binaries in a source release, so copy the Gradle wrapper there first:
  ```bash
  cp -r ./cayenne-gradle-plugin/gradle ./cayenne-assembly/target/cayenne-X.X-src/cayenne-gradle-plugin/
  ```

* Build the binary assemblies:
  ```bash
  mvn clean install -Passembly,generic -DskipTests

  # You will need to do this on macOS
  mvn clean install -Passembly,mac -DskipTests

  # You will need to do this on Windows
  mvn clean install -Passembly,windows -DskipTests
  ```

* Sign and checksum each file ("-u" can be omitted if you have only one GPG key), then stage them as above:
  ```bash
  # repeat for every assembly: cayenne-X.X-src.tar.gz, cayenne-X.X.tar.gz (generic),
  # cayenne-X.X-win.zip and cayenne-X.X-macosx.dmg
  gpg -a -b -u B8AF90BF cayenne-X.X.tar.gz
  sha512sum cayenne-X.X.tar.gz > cayenne-X.X.tar.gz.sha512   # "shasum -a 512" on macOS
  ```

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
  ```bash
  svn mv https://dist.apache.org/repos/dist/dev/cayenne/X.X \
         https://dist.apache.org/repos/dist/release/cayenne/
  ```
    
{{% gap %}}


## After the release


* Delete a **previous version** of Cayenne release of the same branch from the dist server. 
  It should be already [archived by Apache] (https://www.apache.org/dev/release.html#when-to-archive). Do this with an svn command like this:
  ```bash
  svn rm https://dist.apache.org/repos/dist/release/cayenne/Y.Y
  ```

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
* Update https://en.wikipedia.org/wiki/Apache_Cayenne

{{% gap %}}


## Troubleshooting

* **Retrying a failed step.** `release:prepare` records the last completed phase in
  `release.properties` and resumes from there, so after a transient failure just run it again
  (`-Dresume=false` starts over). `release:perform` wipes and re-creates *target/checkout* on every
  run, so it can be re-run as is. Check and drop the half-filled staging repo in Nexus before retrying
  `release:perform`.

* **Undoing an attempt.** `release:rollback` restores the backup POMs, commits the revert and
  deletes the tag:
  ```bash
  mvn release:rollback
  ```
  It only works **between `prepare` and `perform`**: a successful `release:perform` finishes by
  calling `release:clean`, which deletes the *release.properties* and *pom.xml.releaseBackup* that
  rollback needs. A *failed* `perform` leaves them in place, so rollback still works there. Rollback
  cleans up after itself too, so it is a one-shot.

  It knows nothing about Nexus or SVN: drop the staging repo by hand. 
  Tag removal only logs a warning if it fails, so verify it:
  ```bash
  git ls-remote --tags origin
  ```
  On `STABLE-4.2` (maven-release-plugin 2.5.3) the tag is never removed - tag removal was only
  implemented in 3.0.0-M1 - so delete it manually there.

* **Nothing left to roll back**, i.e. `perform` succeeded but the release must be redone: drop the
  staging repo, then clean up the tag and the two `[maven-release-plugin]` commits by hand.
  ```bash
  git tag -d X.X && git push --delete origin X.X
  ```

* **Nexus won't close the staging repo.** "Missing Signature", or missing sources / javadoc, means
  the `release` profile was not active. Drop the repo and re-run `mvn release:perform -P release`.

* **`release dist` fails at "Check the version".** The POM version at the tag must equal the tag and must not be a
  SNAPSHOT: check the tag name you entered, and that `release:prepare` pushed the tag. The workflow only reads the
  repository, so a failed run leaves nothing to clean up - fix the cause and run it again for the same tag.

* **`sign-and-stage.sh` warns that the key is not in `KEYS`.** Append it and publish `KEYS` before the vote:
  ```bash
  (gpg --list-sigs <fingerprint> && gpg --armor --export <fingerprint>) >> KEYS
  ```

* **GPG can't sign.** Export `GPG_TTY=$(tty)` so the agent can prompt for the passphrase, and pass
  `-Dgpg.keyname` if you have more than one key. The `gpg.passphrase` property is deprecated in
  maven-gpg-plugin 3.2.x - use the agent or the `MAVEN_GPG_PASSPHRASE` environment variable.

* **`release:prepare` refuses to start** on local modifications: commit the `RELEASE-NOTES.txt` and
  `UPGRADE.md` edits first.

{{% gap %}}

    
## Reference:
    
* Apache release publishing: https://www.apache.org/dev/release-publishing.html
* Apache Maven release publishing: https://www.apache.org/dev/publishing-maven-artifacts.html
* Apache RAT: https://creadur.apache.org/rat/
* Signing Releases: https://www.apache.org/dev/release-signing.html
