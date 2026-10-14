---
layout: page
permalink: /publications/
title: publications
description: Selected papers and full publication record.
nav: true
nav_order: 2
---
{% include theme-colours.liquid %}

## Selected publications

These ten papers provide an overview of my research, particularly the development of new satellite methods for observing atmospheric gravity waves, their role in atmospheric dynamics, and their representation in numerical models. They are selected to give a flavour of my primary research area, as opposed to being (e.g.) my ten most cited or most recent.

<div class="publications">
{% bibliography --query @*[topten=true] %}
</div>

## Other publications

The below complete list may be slightly out-of-date as it is updated manually. A (perhaps) more up-to-date list is also available on [Google Scholar](https://scholar.google.co.uk/citations?user=yeABvDEAAAAJ&hl=en).

{% include bib_search.liquid %}

<div class="publications">
{% bibliography --query @*[topten!=true] %}
</div>
