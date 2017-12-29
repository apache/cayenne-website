---
title: Cayenne 3.1.1 Released
date: 2016-05-16T12:00:00+03:00
url: /2016/05/cayenne-311-released.html
--- 

This new maintenance release has a few major bug fixes and improvements.
It can be downloaded from [here](/download.html).

<div class="pb-3"><!-- gap 3rem --></div>
<h2 class="text-center">A full list of changes in this release:</h2>
<div class="pb-2"><!-- gap 2rem --></div>

* CAY-1862 MySQL - allow specifying a length for TIMESTAMP and TIME columns
* CAY-2042 Remove an arbitrary limitation on 1000 runtime DbRelationships

<div class="pb-2"><!-- gap 2rem --></div>

### Bug Fixes:

* CAY-1863 Make determining whether a particular database type supports length adapter-specific not universal
* CAY-1964 Fix convertAdditionalDataMaps() in CayenneGeneratorMojo.java
* CAY-1973 error while generating classes
* CAY-1978 ESCAPE clause should be included in LIKE parenthesis
* CAY-1979 Prefetches on Many-to-Many Relationships with Longvarchar
* CAY-2047 Relationship mapping with target inheritance
* CAY-2049 Changing the Relationship name in ObjRelationship Inspector has no effect
* CAY-2066 Memory leak in ExtendedTypeMap for inner classes