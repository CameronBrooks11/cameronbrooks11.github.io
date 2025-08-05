---
layout: default
title: Home
---

## Hi, I’m Cam

Welcome to the root of my GitHub Pages. Explore my projects below:

Each project title links to its GitHub Pages site. GitHub repos are shown as `</>` links beside the project titles.

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
