---
title:  The Apache Software Foundation Announces Apache™ Cayenne™ v3.1
date: 2014-09-29T17:38:42+03:00
url: /2014/09/cayenne-31-released.html
---

The Apache Software Foundation (ASF), the all-volunteer developers, stewards, and incubators of more than 200 Open Source projects and initiatives, announced today the availability of Apache™ Cayenne™ v3.1, the Open Source Java framework for object relational mapping (ORM), persistence, and caching.

"With the launch of version 3.1, Apache Cayenne has continued to evolve its mature 12 year-old library by introducing 125 new features," said Andrus Adamchik, Vice President of Apache Cayenne.
Cayenne is an enterprise Java ORM with integrated support for caching, three-tier persistence, object lifecycles and workflow, inheritance, paging, on demand faulting, auditing and much more. As an object relational mapping library, Cayenne integrates applications to any SQL database available today, freeing solutions from being locked into one database engine. At the same time it improves performance through paging and caching, enforces data integrity and makes it dramatically faster for developers to build a reliable application.

Cayenne has a track record of solid performance in high-volume environments. Apache Cayenne is an exceptional choice for persistence services, and is in use at ish onCourse, National Hockey League, Nike, Unilever and the Law Library of Congress (the world's largest publicly-available legal index) as well as dozens of high-demand applications and Websites accessed by millions of users each day.

Apache Cayenne v3.1 is the result of 4 years of development. Notable new features and improvements include:

* easier configuration and embedding in any type of application;
* highly configurable runtime, enabled by one of the industry's smallest built-in Dependency Injection (DI) containers written specifically for Cayenne (and that co-exists with other DI/IoC, such as Apache Tapestry). It is also very easy to create more than one runtime, which opens interesting possibilities like multi-tenancy;
* nearly all components now pluggable, making it very easy to create more than one runtime and easily change or extend internals of the stack declaratively --from cache provider to SQL log format to DataSource lookup strategy and much more;
* improved ORM modularity to allow  projects to be included in libraries without assumptions about the target use. Different aspects of an application can now be modeled in separate mapping projects and combined in runtime as needed. As a result Cayenne projects can be included in libraries that make no assumptions about the target use;
* extended persistent events model from simple per-object events to more higher-level "workflows" that can be configured with app-specific annotations on persistent classes. Cayenne ships with "cayenne-lifecycle" module that provides a few common examples of such workflows activated on data changes: data modifications audit, precision cache invalidation, etc.; and performance optimizations for improved overall concurrency

"Developers who are seeking an alternate to EJB/Hibernate might find Cayenne's graphical modeler, reverse database engineering, easy to use query API and flexible context model a joy to work with," said Aristedes Maniatis, member of the Apache Cayenne Project Management Committee and CEO of ish.

"We use Apache Cayenne as the ORM for a large and complex budgeting project for around twenty government organizations," said Daniel Abrams, CEO of MassLight. "Cayenne is used to access and persist exhibit data, business validation rules, and account information, and has simplified the development process. A single Cayenne method call evaluates all changes in the user's context and generates all statements required to commit their changes within a single transaction without the developer having to write code to track the changes -- Cayenne does all the work. Since switching to Cayenne, there haven't been any faulting errors that tended to plague the previous version of the application because of the complex data model. This was one of the principal reasons for the switch to Cayenne and the data model has become significantly more complex now."

"We use Cayenne in our system to collect, quality control and distribute world coverage nautical charts to navies, pilots, inspectors and several thousand vessels," said Tore Halset, Development Manager at Electronic Chart Centre and PRIMAR. "We have been happy users of Apache Cayenne since 2005 and are now on version 3.1."

"Apache Cayenne is a core service in Avoka Transact, an engagement platform for multi-channel sales and service transactions," said Malcolm Edgar, Vice President of Engineering at Avoka.

"We use Apache Cayenne to support the Oracle, MySQL, and SQL Server databases. Cayenne provides the right blend of ORM capabilities and low level JDBC access when required. It has been a rock-solid technology for us."
In addition, Apache Cayenne's HTML documentation and tutorials have been completely revised and available in PDF for the first time.

"Our comprehensive documentation and vibrant, helpful user community are just what you need when you have questions about the internals of Cayenne or the best way to achieve your goals," added Adamchik.

### Availability and Oversight
Cayenne v3.1 is available immediately as a free download from [https://cayenne.apache.org/download/](https://cayenne.apache.org/download/). As with all Apache products, Apache Cayenne software is released under the Apache License v2.0, and is overseen by a self-selected team of active contributors to the project. A Project Management Committee (PMC) guides the Project's day-to-day operations, including community development and product releases. For documentation and ways to become involved with Apache Cayenne, visit [https://cayenne.apache.org/](https://cayenne.apache.org/) and @ApacheCayenne on Twitter.

### About The Apache Software Foundation (ASF)
Established in 1999, the all-volunteer Foundation oversees more than two hundred leading Open Source projects, including Apache HTTP Server --the world's most popular Web server software. Through the ASF's meritocratic process known as "The Apache Way," more than 450 individual Members and 4,000 Committers successfully collaborate to develop freely available enterprise-grade software, benefiting millions of users worldwide: thousands of software solutions are distributed under the Apache License; and the community actively participates in ASF mailing lists, mentoring initiatives, and ApacheCon, the Foundation's official user conference, trainings, and expo. The ASF is a US 501(c)(3) charitable organization, funded by individual donations and corporate sponsors including Budget Direct, Citrix, Cloudera, Comcast, Facebook, Google, Hortonworks, HP, Huawei, IBM, InMotion Hosting, Matt Mullenweg, Microsoft, Pivotal, Produban, WANdisco, and Yahoo. For more information, visit [https://www.apache.org/](https://www.apache.org/) or follow @TheASF on Twitter.

