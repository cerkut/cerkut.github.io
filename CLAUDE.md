# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

@AGENTS.md

`AGENTS.md` (imported above) is the **authoritative** agent entry point: change routing, the stop sign for gem-owned paths, the three silent failure modes, and the validated command set. Keep it short and ecosystem-neutral. Cross-repo architecture — the wrapper/tag/gem delegation table, feature gating, the v1 config contract, local overrides — lives in [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md); area-to-gem ownership lives in [`docs/BOUNDARIES.md`](docs/BOUNDARIES.md).

**Read those three before editing anything.** Everything below is Claude-specific or longer-form operational detail that does not belong in the short entry point. Do not restate facts from those files here — link to them.

## Daily dev loop

```bash
bundle install                                # ruby gems
bundle exec jekyll serve                      # dev server → http://localhost:4000/al-folio/  (NOTE baseurl)
bundle exec jekyll build --baseurl /al-folio  # production-style build to _site/
bash test/integration_distill.sh              # run ONE integration test (any of the seven in test/)
npm run test:visual:update                    # refresh playwright snapshots after intentional UI change
bundle exec al-folio upgrade apply --safe     # deterministic codemods (font-weight-* → font-*, remote→local URLs)
bundle exec al-folio upgrade overrides diff <path>    # then `overrides accept <path>` to acknowledge an override
```

## Optional toolchains

- **Jupyter posts.** `bin/setup-python-deps` installs _only_ `jupyter` and `nbconvert` (via `pip --user --break-system-packages`) for `jekyll-jupyter-notebook`. It does **not** read `requirements.txt`. Missing `jupyter-nbconvert` is warn-and-continue; notebook rendering is skipped.
- **Everything else Python.** [`requirements.txt`](requirements.txt) is the fuller list and must be installed separately (`python3 -m pip install -r requirements.txt`): `rendercv[full]` for CV rendering, `scholarly` for `bin/update_scholar_citations.py`, plus `nbconvert` and `pyyaml`.
- **Responsive images.** `imagemagick.enabled: true` needs ImageMagick `convert` on `PATH`.
- **Manual deploy.** `bin/deploy` is the manual `gh-pages` build + purgecss + force-push path; CI normally deploys. `purgecss` is not a devDependency — install it with `npm install -g purgecss`.

## Docker serving model (v1-specific)

`docker compose up -d` bind-mounts the repo to `/srv/jekyll` and runs `bin/entry_point.sh`, which serves with `--force_polling --destination /tmp/_site`. The build output deliberately goes to **container-local `/tmp/_site`, not the bind-mounted `_site`** — writing `_site` back across the host bind mount caused write deadlocks. The container also `inotifywait`s `_config.yml` and restarts Jekyll on change (config edits aren't hot-reloaded by `--watch`). Verify with the `/al-folio` baseurl: `curl -fsS http://127.0.0.1:8080/al-folio/`. `docker-compose-slim.yml` pulls a prebuilt `:slim` image instead of building locally.

## CI gates and the style contract

`npm run lint:style-contract` (`test/style_contract.js`) is the automated enforcement of the thin-starter boundary and will fail CI if you cross it. Beyond the forbidden paths listed in `AGENTS.md`, it also asserts that `_config.yml` keeps `theme: al_folio_core` and the required plugins, that the `third_party_libraries` SRI pins are present, and that the `al_math` Gemfile pin stays on a released version rather than a git branch.

Other gates:

- `unit-tests.yml` — style contract plus all seven `test/integration_*.sh` scripts (`comments`, `plugin_toggles`, `distill`, `bootstrap_compat`, `upgrade_cli`, `css_minify`, `new_plugins`).
- `visual-regression.yml` — Playwright on chromium + webkit, diffing the candidate build against a `v0.16.3` baseline worktree served on `:4100` via `BASELINE_URL`.
- `upgrade-check.yml` — `bundle exec al-folio upgrade audit`.
- `prettier.yml` — Prettier with `@shopify/prettier-plugin-liquid` and `printWidth: 150`. Run `npm run lint:prettier` before pushing; `npx prettier . --write` fixes.
- `update-tocs.yml` — regenerates `<!--ts-->…<!--te-->` blocks in changed root and `docs/` Markdown files. If you add or rename a heading, expect a follow-up auto-commit on `main`.

## This fork's runtime notes (deviates from upstream defaults above)

- **Ruby toolchain.** The macOS system `/usr/bin/ruby` here is 2.6.10 — too old for the `bundler` version (4.0.6) this `Gemfile.lock` requires (`bundler requires Ruby version >= 3.2.0`). Fix once via `rbenv`: `rbenv install 3.3.12 && rbenv local 3.3.12` (writes a gitignored `.ruby-version`), then `gem install bundler -v 4.0.6` and `bundle install`. Every shell needs `eval "$(rbenv init -)"` (or a shell rc hook) before `bundle exec ...` picks up 3.3.12 instead of system ruby.
- **Baseurl is blank, not `/al-folio`.** `_config.yml`'s `baseurl:` is empty — this fork serves from the root. Dev server is `http://127.0.0.1:4000/`, not `.../al-folio/`; ignore the generic `/al-folio` baseurl notes above when working in this repo.
- **ImageMagick isn't installed.** `imagemagick.enabled` webp generation fails with `sh: convert: command not found` (exit 127) for every responsive image on every build. This is harmless noise, not a build failure — the site still serves; don't chase it unless asked to fix responsive images.
- **Nav tabs and dropdowns.** The top nav is built from `_pages/*.md` front matter: `nav: true` + `nav_order: N` (integer position, gaps are fine). A dropdown tab is a parent page with `dropdown: true` and a flat `children: [{title, permalink}, ...]` list (see `_pages/dropdown.md`, `_pages/project-triggers.md`) — give the parent page **no** `permalink`; it's never linked to directly (visiting its default `_pages/<name>/` route 404s, which is expected), only `nav`/`title`/`children` matter for it.
- **Two bibliographies via jekyll-scholar, one `scholar:` config.** `_config.yml`'s `scholar.source: /_bibliography/` covers every `.bib` file in that directory, but `scholar.bibliography:` only names the _default_ one (`papers.bib`, used by `_pages/publications.md`'s bare `{% bibliography %}`). A second file renders via `{% bibliography --file <name> %}` (name without extension) — `_pages/theses.md` uses `{% bibliography --file export %}` for `_bibliography/export.bib`. No `_config.yml` edit needed to add more files this way.
- **Per-entry BibTeX field behavior** (theme's `bib.liquid`, shared by every `{% bibliography %}` call): `website={url}` renders a clickable "Website" button; `note={text}` renders as **visible** plain text next to the year (don't put machine IDs there — that's why `export.bib`'s RefWorks `note={ID: alma...}` fields were converted to `website=`); `bibtex_show={true}` renders a "Bib" toggle button that expands the entry's raw BibTeX (already used by 2 entries in `papers.bib`; now on every entry in `export.bib`); `keywords={...}` is stored but **not rendered anywhere** by `bib.liquid` — it is not searched by the page's live filter box (`bibsearch.js` only matches visible `innerText`), so it's not a substitute for putting searchable terms in a rendered field like `abstract` or the title/journal.

## Gem version pins

`Gemfile` pins every `al-*` gem to an exact released version in `group :al_folio_plugins`, and `_config.yml` lists the same gems under `plugins:`. Read the current pins from the `Gemfile` rather than trusting any version quoted in prose — including here. To test a gem fix against this site, repoint the `Gemfile` at a sibling checkout (`path:`, `git:`, or `branch:`) and `bundle install`; see [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md#working-on-a-gem-alongside-the-starter). Revert the pin before committing.
