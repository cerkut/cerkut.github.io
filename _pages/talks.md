---
layout: page
permalink: /talks/
title: talks
description: Talks and presentations I have given, newest first.
nav: true
nav_order: 9
toc:
  sidebar: left
---

{% assign talks = site.data.talks | sort: "date" | reverse %}
{% assign current_year = "" %}

{% for talk in talks %}
  {% assign year = talk.date | date: "%Y" %}
  {% if year != current_year %}
    {% assign current_year = year %}

## {{ year }}

  {% endif %}

#### {{ talk.title }}{% if talk.upcoming %} *(upcoming)*{% endif %}

{% if talk.type %}{{ talk.type }}. {% endif %}**{{ talk.venue }}**, {{ talk.location }}, {{ talk.date | date: "%-d %B %Y" }}

{% if talk.note %}*{{ talk.note }}*

{% endif %}{{ talk.description }}

{% if talk.url %}- [{{ talk.url_label | default: "Link" }}]({{ talk.url }}){% endif %}
{% if talk.extra_link %}- [{{ talk.extra_link_label | default: "More info" }}]({{ talk.extra_link }}){% endif %}

{% endfor %}
