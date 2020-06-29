---
layout: archive
title: "Publications"
excerpt: "The list of publications is shown in the page. Please also check <a href='{{author.googlescholar}}' target='_blank'>my Google Scholar profile</a> for the latest information."
permalink: /publications/
author_profile: true
---

{% include base_path %}

{% if page.author and site.data.authors[page.author] %}
  {% assign author = site.data.authors[page.author] %}{% else %}{% assign author = site.author %}
{% endif %}

{% if author.googlescholar %}
  You can also find my articles and recent preprints on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a></u>.
{% endif %}

## Selected publications

{% for post in site.publications reversed %}
  {% if post.highlight %}
    {% if post.permalink contains 'preprint' %}
      {% if post.ispublishedpreprint %}
      {% else %}
        {% include archive-single.html %}
      {% endif %}
    {% else %}
        {% include archive-single.html %}
    {% endif %}
  {% endif %}  
{% endfor %}

## Preprints

Preprints are provided for rapid sharing of the data, results, and knowledge among the scientific community and have not finished the peer-review process.

We welcome comments and feedback you may have.

{% for post in site.publications reversed %}
  {% if post.permalink contains 'preprint' %}
    {% if post.ispublishedpreprint %}
    {% else %}
      {% include archive-single.html %}
    {% endif %}
  {% endif %}
{% endfor %}

## Peer-reviewed publications

{% for post in site.publications reversed %}
  {% if post.permalink contains 'preprint' %}
  {% else %}
      {% include archive-single.html %}
  {% endif %}
{% endfor %}
