---
layout: post
title: a post with marimo snippets, for MLME26
date: 2026-09-05 00:01:00
description: running Python in the browser with marimo, ahead of MLME 26
tags: code formatting
categories: sample-posts
marimo: true
---

I'm revising MLME 26, kicking off 2026-09-07, and moving its labs from Jupyter to marimo for reproducible, in-browser demos. This post is the reference for that transition, starting with the notebook below.

[marimo](https://marimo.io) notebooks can run Python directly in the reader's browser. Opt a page in from its front matter:

```yaml
---
layout: post
title: a post with marimo snippets
marimo: true
---
```

Nothing is loaded on pages without that flag, so bundling the plugin costs nothing site-wide.

## Runnable snippets

Wrap fenced Python blocks in a container and the runtime turns them into an interactive notebook after the page loads:

<div class="al-marimo-inline" markdown="1">

```python
import marimo as mo

slider = mo.ui.slider(1, 20, value=5, label="n")
slider
```

```python
mo.md(f"The first {slider.value} squares: {[i**2 for i in range(1, slider.value + 1)]}")
```

</div>

Until the runtime has moved those blocks into place the container stays hidden, so readers never see the raw source flash before it becomes a notebook.

## Embedding a hosted notebook

If you already publish a notebook — on `marimo.app` or your own WASM host — embed it instead. Here's the MLME 26 Jupyter-to-marimo transition notebook:

```liquid
{% raw %}{% al_marimo_embed src="https://marimo.app/l/30o11k" height="700px" caption="MLME 26: Jupyter to marimo transition" %}{% endraw %}
```

{% al_marimo_embed src="https://marimo.app/l/30o11k" height="700px" caption="MLME 26: Jupyter to marimo transition" %}

The frame is sandboxed **without** `allow-same-origin`, so the embedded notebook cannot reach this page's storage or cookies.

## marimo vs. Jupyter

marimo replaces Jupyter's top-to-bottom, JSON-based notebooks with reactive execution stored as plain `.py` files: editing a cell auto-reruns every dependent cell, so the file you commit is git-diffable and actually reproducible. Jupyter still wins for non-Python kernels and its larger widget/extension ecosystem. See [marimo as a Jupyter alternative](https://marimo.io/features/vs-jupyter-alternative) for the full comparison.

## A note on what this loads

The `marimo-snippets` runtime is vendored into the plugin at a pinned version and served from your own site, rather than pulled from a CDN — so no third-party origin executes script in your readers' pages. Running a notebook does contact marimo's host, which is worth knowing before you opt a page in.
