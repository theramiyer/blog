---
layout: page
title: Archive
navigation: True
logo: 'assets/images/ramiyer.png'
current: archive
cover: 'assets/images/cover1.jpg'
---

<section class="archive-post-list">

   {% for post in site.posts %}
      {% assign author = site.authors[post.author] %}
      {% assign currentDate = post.date | date: "%Y" %}
       {% if currentDate != myDate %}
          {% unless forloop.first %}</ul>{% endunless %}
          <p>{{ currentDate }}</p>
          <ul>
          {% assign myDate = currentDate %}
      {% endif %}
      <li><a href="{{ post.url }}"><span>{{ post.date | date: "%B %-d, %Y" }}</span> - {{ post.title }}</a> by <a href="/author/{{ author.name }}">{{ author.displayname }}</a></li>
      {% if forloop.last %}</ul>{% endif %}
   {% endfor %}

</section>
