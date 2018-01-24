---
layout: default
title: Announcements
collection: announcements
permalink: /announcements/
---

These announcements and hot topics concern Federal Public Key Infrastucture changes that may affect your agency's operations.

{% for item in site.announcements reversed %}
  {% assign link = item.permalink | remove: '/' %}
  {% if link != item.collection %}
  <hr/>
  <h3><a href="{{site.baseurl}}/{{ item.permalink }}"  title="{{ item.title }}">{{ item.title }}</a></h3>
  <strong>Date:</strong> {{ item.pubDate }}<br />
  <strong>Description:</strong> {{ item.description }}
  {% endif %}
{% endfor %}
