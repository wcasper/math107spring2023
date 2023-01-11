---
layout: page
title: Exams
permalink: /exams-list/
---

{% for exam in site.exams %}
  <p>
    <a target="_parent" href="..{{ exam.url }}">
      {{ exam.title }}
    </a>
  </p>
{% endfor %}
