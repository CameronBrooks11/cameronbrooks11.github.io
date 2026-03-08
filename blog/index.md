---
layout: default
title: Writings
permalink: /writings/
---

# Writings

Welcome to my writings, you can find all my posts in the chronological listing below — enjoy!

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <small>{{ post.date | date: "%b %-d, %Y" }}</small>
      <br>
    </li>
  {% endfor %}
</ul>

<br>

> _These writings are also hosted on my dedicated personal site at [cameronbrooks.net/writings](https://www.cameronbrooks.net/writings)._
