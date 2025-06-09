---
layout: default
title: Blog
permalink: /blog/
---

# Blog

Welcome to my blog, you can find all my posts in the chronological listing below — enjoy!

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

> _This blog is also hosted on my dedicated personal at [cameronbrooks.net/blog](https://www.cameronbrooks.net/blog)._
