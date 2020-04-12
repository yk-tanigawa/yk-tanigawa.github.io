---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

{% if page.author and site.data.authors[page.author] %}
  {% assign author = site.data.authors[page.author] %}{% else %}{% assign author = site.author %}
{% endif %}

{% if author.googlescholar %}
  You can also find my articles and recent preprints on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

## Preprints

{% for post in site.publications reversed %}
  {% if post.permalink contains 'preprint' %}
      {% include archive-single.html %} 
  {% endif %}
{% endfor %}

## Peer-reviewed publications

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
