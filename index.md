---
title:  Cayenne home
---

<a href="https://twitter.com/ApacheCayenne" class="twitter-follow-button" data-show-count="false">Follow @ApacheCayenne</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

## Object Relational Mapping, Persistence and Caching for Java
 
Apache Cayenne(tm) is an open source persistence framework licensed
under the Apache License, providing object-relational mapping (ORM) and remoting services. With a wealth of unique and powerful features, Cayenne can address a wide
range of persistence needs. Cayenne seamlessly binds one or more database
schemas directly to Java objects, managing atomic commit and rollbacks, SQL
generation, joins, sequences, and more. With Cayenne's Remote Object
Persistence, those Java objects can even be persisted out to clients via
Web Services.

Cayenne is designed to be easy to use,  without sacrificing flexibility or
design. To that end, Cayenne supports database reverse engineering and
generation, as well as a Velocity-based class generation engine. All of
these functions can be controlled directly through the CayenneModeler, a
fully functional GUI tool. No cryptic XML or annotation based configuration
is required\! An entire database schema can be mapped directly to Java
objects within minutes, all from the comfort of the GUI-based
CayenneModeler.

Cayenne supports numerous other features, including caching, a complete
object query syntax, relationship pre-fetching, on-demand object and
relationship faulting, object inheritance, database auto-detection, and
generic persisted objects. Most importantly, Cayenne can scale up or down
to virtually any project size. With a mature, 100% open source framework,
an energetic user community, and a track record of solid performance in
high-volume  environments, Cayenne is an exceptional choice for persistence
services.

## News

<ul>
  {% for post in site.posts limit:6 %}
    <li>
      <a href="{{ post.url }}"><span class="date">{{ post.date }}</span> {{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

## Cayenne Modeler
<span style="float: right"><img style="border: 0px solid black" src="/img/modeler-thumb.png"></span>
Cayenne is distributed with CayenneModeler - a complete GUI mapping tool that supports reverse-engineering of RDBMS
schemas, working with database mappings and generation of Java source code
for the persistent objects.

Persistent Java classes are generated and synchronized with the mapping
using the Modeler or alternatively with Maven or Ant. A database SQL schema
can be generated from the Modeler and also with simple API calls.
