---
title:  News
permalink: /news
---

<ul class="news">
  {% for post in site.posts %}
    <li>
      <span class="date">{{ post.date | date: "%-d %b %Y" }}</span><a href="{{ post.url }}"> {{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>