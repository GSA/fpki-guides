---
layout: default
title: Archived Announcements
collection: announcements
permalink: /announcements/archive/
---

{% include alert-warning.html content="Archived announcements are listed below for historical reference only. These announcements are longer being updated or maintained." %}

{% for item in site.announcements-archive %}
  <hr/>
  <h3><a href="{{site.baseurl}}/{{ item.permalink }} " target="_blank"  title="{{ item.title }}">{{ item.title }} </a></h3>
  **Archive Date**: {{ item.archDate }} 
  <br>
  **Publish Date**: {{ item.pubDate }}
  <br>
  **Description**: {{ item.description }}
  <br>
  
{% endfor %}
