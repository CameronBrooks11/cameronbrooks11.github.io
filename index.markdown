---
layout: default
title: Home
---

## Hi, I’m Cam

This is my GitHub Pages — a directory for my GitHub-hosted project docs and a mirror of my writings. For more about me, visit my main site at [cameronbrooks.net](https://www.cameronbrooks.net).

Browse my project sites below by clicking the titles to visit their sites, or the `</>` links for their repositories.

> See the [Projects Registry](/projects-registry) for the full list.

<ul>
{% assign sorted_projects = site.data.projects | sort: "name" %}
{% for project in sorted_projects %}
  <li style="margin-bottom: 0.75em;">
    <strong>
      <a href="{{ project.link }}">{{ project.name }}</a>
      <a href="{{ project.repo }}" title="GitHub Repo"
         style="font-size: 0.75em; vertical-align: super; text-decoration: none; margin-left: 0.25em;">&lt;/&gt;</a>
    </strong>
    <p style="margin: 0.2em 0 0.2em;">
      {{ project.description }}
    </p>
  </li>
{% endfor %}
</ul>

---

For any inquiries, contact me via my main site at [cameronbrooks.net/contact.html](https://www.cameronbrooks.net/contact.html).
