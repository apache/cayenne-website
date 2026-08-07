+++
title = "Cayenne 4.0 Final Released"
date = 2018-08-16 12:00:00+03:00
+++
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements. See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to you under the Apache License, Version
  2.0 (the "License"); you may not use this file except in compliance
  with the License. You may obtain a copy of the License at
 
  https://www.apache.org/licenses/LICENSE-2.0 Unless required by
  applicable law or agreed to in writing, software distributed under the
  License is distributed on an AS IS BASIS, WITHOUT WARRANTIES OR
  CONDITIONS OF ANY KIND, either express or implied. See the License for
  the specific language governing permissions and limitations under the
  License.
-->



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

Cayenne can be downloaded from [here](/download/).

<div class="gap" style="margin-bottom: 3rem;"></div>

Here is bug fixes since the release candidate:

* [CAY-2418](https://issues.apache.org/jira/browse/CAY-2418) Modeler: unable to edit entity selected via Search
* [CAY-2427](https://issues.apache.org/jira/browse/CAY-2427) Modeler: Undo throws exception
* [CAY-2430](https://issues.apache.org/jira/browse/CAY-2430) Modeler: Redo throws NPE
* [CAY-2431](https://issues.apache.org/jira/browse/CAY-2431) Cayenne JDK 11 compatibility
* [CAY-2435](https://issues.apache.org/jira/browse/CAY-2435) cdbimport: procedure parameters are not imported
* [CAY-2436](https://issues.apache.org/jira/browse/CAY-2436) NPE in CayenneRuntimeException constructor
* [CAY-2442](https://issues.apache.org/jira/browse/CAY-2442) Broken EventBridge providers implementations
* [CAY-2444](https://issues.apache.org/jira/browse/CAY-2444) Change URI from http:// to https:// in xsi:schemaLocation
* [CAY-2445](https://issues.apache.org/jira/browse/CAY-2445) Oracle: Problem with ExpressionFactory.notInExp()
