---
title: Cayenne 4.0 Final Released
date: 2018-08-16T12:00:00+03:00
---

Apache Cayenne team is really glad to announce a long awaited final (general availability) release of _Cayenne 4.0_. 
It is a really important milestone for the entire Cayenne community. Here are some facts about this long journey:

* Development started: _May 29, 2012_ (back then it was called Cayenne 3.2)
* Intermediate development releases: _8_
* Changes and new features: _218_
* Issues fixed: _179_
* Commits made: _2421_
* Authors: _29_

Many people have already been using various milestones, betas and RCs of 4.0, so the GA release is a simple and straightforward upgrade for them. For those who were waiting for the official "final" version before upgrading, this day is now. Among those ~ 400 tasks there are a lot of cool features making everyday life of a Java developer easier:

* fluent query API, simple parameter bindings, aggregating and scalar queries;
* better runtime assembly and extension mechanism;
* fresh CayenneModeler;
* working "Database-First" ORM flow;
* JCache integration;
* database cryptography extensions;
* Gradle ORM workflow plugins and much more

In the coming weeks expect blog posts that explain what this all means. Follow us on Twitter [@ApacheCayenne](https://twitter.com/ApacheCayenne) to not miss the announcements, and feel free to start a conversation on the [user@ mailing list]({{< ref "collaboration/mailing-lists.md" >}}). 

Thanks to everyone who made 4.0 possible! 

Cayenne can be downloaded from [here](/download.html).

{{% gap %}}

Here is bug fixes since the release candidate:

* {{% jira 2418 %}} Modeler: unable to edit entity selected via Search
* {{% jira 2427 %}} Modeler: Undo throws exception
* {{% jira 2430 %}} Modeler: Redo throws NPE
* {{% jira 2431 %}} Cayenne JDK 11 compatibility
* {{% jira 2435 %}} cdbimport: procedure parameters are not imported
* {{% jira 2436 %}} NPE in CayenneRuntimeException constructor
* {{% jira 2442 %}} Broken EventBridge providers implementations
* {{% jira 2444 %}} Change URI from http:// to https:// in xsi:schemaLocation
* {{% jira 2445 %}} Oracle: Problem with ExpressionFactory.notInExp()