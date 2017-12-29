---
# This page is rendered based on data/cayenne.yaml file,
# see layouts/about/download.html template.
title: Download
menu: 
    main:
        weight: 10   
    footer:
        weight: 20 
        parent: about 
weight: 20
layout: download
url: /download/index.html
aliases:
    - /download.html
---

<h5 class="mb-5">KEYS file to verify the file signatures can be <a href="http://www.apache.org/dist/cayenne/KEYS">found here</a></h5>

## Legacy Releases

<ul class="list-unstyled  mb-5">
	<li>
		<a href="http://archive.apache.org/dist/cayenne/">All Apache Cayenne releases</a>
	</li>
	<li>
		<a href="http://sourceforge.net/project/showfiles.php?group_id=48132">All pre-Apache (SourceForge) Cayenne Releases</a>
	</li>
</ul>

## Maven

All Cayenne artifacts are available from [Maven Central][1] for use with Maven, Ivy, Gradle or any other dependency management tool. 


  [1]: http://search.maven.org/#search|ga|1|g%3A%22org.apache.cayenne%22