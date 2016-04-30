---
layout: page
excerpt: "Quick tour of a few products I've shipped, and programs I've built."
---

<ul class="post-list">
{% for post in site.categories.work %}
  <li><article class="entryw">

    <div class="entry-wrapper">

    <header class="entry-header">
        <h4 class="entry-title">{% if post.headline %}{{ post.headline }}{% else %}{{ post.title }}{% endif %}</h4>
      </header>

      <div class="entry-content">
        {{ post.content }}
      </div><!-- /.entry-content -->

      <footer class="entry-meta">
        {% if post.image %}<img src="{{ site.baseurl }}/images/{{ post.image }}" class="entry-feature-image" alt="{{ post.title }}"> {% endif %}
      </footer>



    </div><!-- /.entry-wrapper -->
  </article></li>

{% endfor %}
</ul>


[Full CV](http://brunosan.github.com/cv)
