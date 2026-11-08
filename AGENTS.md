# AGENTS.md

Practical orientation for any coding agent (Claude, Cursor, Codex, etc.) or new
contributor landing in this repository. Read this before making changes.

## What this is

A personal blog / portfolio website built with [Quarto](https://quarto.org/),
published to GitHub Pages at <https://jeancmaia.github.io>. The site is titled
**"Faoot's Lab"** and hosts long-form technical posts on data science, statistics,
machine learning, LLM inference, and microeconomics.

There is no application code or test suite here. The "product" is rendered HTML
content plus the source documents that produce it.

## Tech stack

| Concern            | Choice                                                        |
| ------------------ | ------------------------------------------------------------- |
| Site generator     | Quarto `1.9.x` (static HTML website, theme `sandstone`)       |
| Languages          | Python (posts run via Jupyter), some R (data-prep scripts)    |
| Environments       | `uv` (lockfile `uv.lock`)                                     |
| Python             | `>=3.12` at the repo root                                     |
| Publishing         | GitHub Pages serving the committed `docs/` directory          |

Per-post Python stacks vary; see [Environment](#environment).

## Repository layout

```
.
├── _quarto.yml            # Quarto project config: website + navbar + output-dir
├── _metadata.yml          # (posts/) shared post defaults: freeze, banner
├── index.qmd              # Home page = auto listing of posts (date desc)
├── about.qmd              # About page ("jolla" template)
├── styles.css             # Custom CSS (currently empty; site theme is sandstone)
├── Makefile               # setup / render / serve / clean targets
├── pyproject.toml         # Root project (uv). No deps yet; pins Python >=3.12
├── uv.lock                # uv lockfile for the root environment
├── .nojekyll              # Tells GitHub Pages not to run Jekyll
├── posts/                 # All blog posts (one directory per post)
│   ├── _metadata.yml
│   ├── tutorial-mcglm/     # .qmd post + data/ + images   (field: statistics)
│   ├── hermes-xlr/         # .ipynb post + diagrams/       (field: LLM inference)
│   └── price-curves-agents/# .ipynb post + own pyproject   (field: microeconomics)
├── _freeze/               # Committed Quarto freeze cache (do not delete/edit)
└── docs/                  # RENDERED OUTPUT, committed & published by Pages
```

### Important generated directories

- **`docs/`** — the real, live output (`output-dir: docs` in `_quarto.yml`). It is
  committed on every publish. **Never hand-edit `docs/`.** It is overwritten by
  `quarto render`.
- **`_freeze/`** — cached execution results for the frozen `tutorial-mcglm` post.
  Committed so the notebook does not re-execute on render. Treat as opaque output.

Quarto's *default* output directory `_site/` is **not used** here (`output-dir` is
`docs`) and is ignored by git — do not create it or commit it.

## Environment

Root project is managed by `uv`:

```bash
make setup          # uv sync  — creates/updates the repo venv
```

Quarto itself must be installed separately (the `quarto` CLI, e.g. `1.9.36`,
must be on `PATH`). `uv run quarto ...` runs the CLI inside the project env.

Per-post dependencies are **not** centralized:

- `posts/price-curves-agents/pyproject.toml` declares its stack
  (PyMC 5.28, ArviZ, EconML, scikit-learn, statsmodels, pandas, ...).
- `posts/tutorial-mcglm/` uses the `mcglm` PyPI package, installed ad hoc (it is
  not in any `pyproject.toml`).
- `posts/hermes-xlr/` is prose + SVG diagrams; no heavy runtime deps.

If you need to re-run a post's code, read that post's own imports/front matter
and install accordingly.

## Common commands

Run these from the repository root (Windows: use the Makefile targets via a
`make`-capable shell, or the underlying commands directly).

```bash
make serve                 # uv run quarto preview  — live preview, use this while editing
make render                # uv run quarto render    — render the whole site to docs/
make render FILE=path.qmd  # render one document only
make clean                 # quarto clean            — clear build caches
```

`_quarto.yml` sets `output-dir: docs`, so **rendering writes to `docs/`** — expect
`docs/` to change after any render.

## Adding or editing a post

Each post is a directory under `posts/` containing one source document
(`.qmd` or `.ipynb`) plus its assets (images, `data/`, diagrams).

Posts may be authored as either:

- A **Quarto `.qmd`** document (e.g. `tutorial-mcglm/tutorial_mcglm.qmd`), or
- A **Jupyter `.ipynb`** notebook (e.g. the other two posts), whose first cell is
  a `raw` cell holding the Quarto YAML front matter.

Required front matter (put it at the top of `.qmd`, or in the leading raw
YAML cell of a notebook):

```yaml
---
title: "..."
description: "..."
date: "YYYY-MM-DD"
categories: [tag1, tag2]
format:
  html:
    code-fold: true
jupyter: python3
---
```

Conventions observed in this repo:

- The home page (`index.qmd`) auto-lists everything under `posts/`, sorted by
  `date` descending, with categories. **Do not add a manual post listing.**
- Post directories are named in kebab-case and usually match the source filename
  stem (`tutorial-mcglm/`, `hermes-xlr/`, `price-curves-agents/`).
- Post bodies start at `##` (H1 is suppressed from the body; the title block
  renders it). The `price-curves-agents` history explicitly removed a duplicate
  in-body H1 — do the same.
- Post-specific assets live beside the source and are copied into `docs/` on
  render. Referenced images must be committed for the build to succeed.
- `posts/_metadata.yml` sets `freeze: true` and a banner title block for **all**
  posts.

### About freezing

Because `freeze: true`, Quarto reuses cached execution results in `_freeze/`
instead of re-running code. Consequences:

- Editing prose/markdown re-renders fast.
- Editing **code** in a frozen post requires the freeze cache for that doc to be
  invalidated (delete the relevant `_freeze/posts/<post>/` folder) so it
  re-executes — which will need that post's dependencies installed.
- Never delete `_freeze/` wholesale unless you intend to re-run every post.

### Authoring conventions referenced in content

- `price-curves-agents` states that PyMC model code follows
  `.skills/bayesian-workflow/SKILL.md` (descriptive seeds, etc.). That `.skills/`
  directory is **not present in this repository** — treat the reference as a
  convention to honor, and confirm with the maintainer if you need the actual
  file.

## Agent skills

Reusable agent instructions live under **`.opencode/skills/<skill-id>/SKILL.md`**
(plus optional `reference/`, `scripts/`). OpenCode discovers them automatically;
`.claude/skills/` and `.agents/skills/` are also recognized for compatibility.
Current skills:

- **`faoot-voice`** — write/edit prose in the author's voice. Its canonical corpus
  is `posts/tutorial-mcglm/tutorial_mcglm.qmd`; annotated evidence is in
  `.opencode/skills/faoot-voice/reference/voice-samples.md`. Load it before
  drafting or substantially editing any post.

## Publishing / deployment

There is **no CI workflow** (no `.github/` directory). Publishing is manual:

1. `make render` (writes to `docs/`).
2. Commit the updated `docs/` tree together with the source changes.
3. Push; GitHub Pages serves the committed `docs/` folder (Jekyll disabled via
   `.nojekyll`).

Branch notes: the working branch is `main`. `origin/HEAD` still points at a stale
`master` that contains only an initial commit. Deployment is configured on the
GitHub side (Pages → branch `/docs`); verify there rather than assuming the git
default branch.

Useful commit scope guidance (from history): content/metadata fixes are made on
feature branches (`feat/*`, `fix/*`) and merged via PRs. Prefer small, focused
changes over direct commits to `main`.

## Gotchas for agents

- **Do not edit generated output** (`docs/`, `_freeze/`) by hand. Change the
  source (`posts/**/*.qmd`, `*.ipynb`, `_quarto.yml`, `styles.css`) and re-render.
- **Keep `_site/` out of the repo.** It is Quarto's default output directory and
  is not used here (output goes to `docs/`). It is git-ignored; don't recreate or
  commit it.
- **`uv` only** — the legacy `poetry.lock` was removed. Use `uv`/`make setup`; do
  not reintroduce poetry config.
- **Notebooks carry both source and outputs** in the same `.ipynb`. When editing
  prose cells, avoid clobbering stored outputs unnecessarily.
- **`.gitignore` ignores `**/CLAUDE.md` and `**/manifest.md`** — this file
  (`AGENTS.md`) is intentionally tool-agnostic and *is* meant to be committed.
- Rendering requires the `quarto` CLI on `PATH`; `uv run` provides Python deps
  but not Quarto itself.
- Empty-looking files (`styles.css`) are real placeholders, not missing content.

## Quick mental model

```
source (.qmd/.ipynb + assets)  ──quarto render──>  docs/ (committed HTML)  ──push──>  GitHub Pages
        ^ edit here                                        ^ never edit by hand
```
