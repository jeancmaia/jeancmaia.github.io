---
name: Thesis Workshop
description: Operate the local, private thesis-drafting workshop. Use when the author drops a new thesis/idea (in chat or _theses/_inbox/), sends change requests for an in-progress draft, or asks about a thesis's status or history. Also use before promoting a thesis into a published post.
---

# Thesis Workshop

A private, **local-only** drafting loop for new articles. Every artifact lives in
`_theses/`, which is git-ignored and never published. The notebook is the working
artifact; versions and an interaction ledger provide the history.

Use the [`faoot-voice`](../faoot-voice/SKILL.md) skill on prose and at promotion.

## Layout

```
_theses/
├── README.md            INDEX.md            JOURNAL.md
├── _inbox/              # author drops raw theses here
├── _template/           # scaffold copied when registering a thesis
└── NNNN-<slug>/
    ├── thesis.md        # seed (verbatim) + registration meta
    ├── brief.md         # living definition of "done"
    ├── draft.ipynb      # working notebook (source of truth)
    ├── journal.md       # per-thesis interaction ledger (append-only)
    ├── state.json       # machine-readable status/version
    ├── versions/        # vNNN.ipynb (normalized) + vNNN.md (flattened)
    └── assets/          # diagrams/images/data — referenced, never embedded
```

IDs are zero-padded counters (`0001-<slug>`); slugs are kebab-case. References are
written as *"thesis 0001, v003"*.

## Register a new thesis

1. Take the author's seed **verbatim** — never rewrite it.
2. Choose the next ID from `INDEX.md`; derive a kebab-case slug.
3. Copy `_theses/_template/` to `_theses/NNNN-<slug>/`.
4. Fill `thesis.md`: seed, `one-liner`, `status: framing`, `target_format: ipynb`.
5. If there is already content, write the first snapshot (`v001`).
6. Add a row to `INDEX.md`, a line to `JOURNAL.md`, set `state.json`.
7. Report the new ID and propose the next step (frame the brief).

## Framing

Before heavy drafting, build `brief.md`: thesis statement, angle/contribution,
must-cover, non-goals, voice, open questions, sources. **Confirm the framing with
the author** — a misread here wastes iterations later.

## Iteration loop

For every change request, do all six steps:

1. **Load** — read `brief.md`, `draft.ipynb`, and the tail of `journal.md`.
2. **Restate** — write the interpretation and any assumptions *before* editing, so
   the author can catch a misread.
3. **Apply** — edit the relevant cells in `draft.ipynb`.
4. **Snapshot** — write `versions/vNNN.ipynb` (normalized) and `versions/vNNN.md`.
5. **Log** — append a `journal.md` entry.
6. **Register** — update `state.json`, `INDEX.md`, and `JOURNAL.md`; report a
   concise summary and what to review.

Never silently change scope: new ideas that appear mid-iteration go to
`brief.md` → *Open questions* for the author to decide.

## Notebook rules (because `.ipynb` is JSON)

- The leading **raw YAML front-matter cell stays first**, unchanged except metadata.
- Snapshots are **normalized**: strip all cell outputs and `execution_count` so
  diffs are small and readable. The live `draft.ipynb` may keep outputs.
- Every snapshot also writes a **flattened `vNNN.md`** (front matter + Markdown
  cells + fenced code) — this is the artifact to read when comparing versions.
- **Reference assets by path** from `assets/`; never embed base64.
- Preserve **cell ids** so the journal can name exactly which cells changed.

## Journal entry template (`_theses/NNNN-<slug>/journal.md`)

```md
### #004 · 2026-11-09 · → v004
- Request:        "<author's words, verbatim>"
- Understood as:  <interpretation + assumptions>
- Cells changed:  - [aeb3492d] intro rewrite
                  - [+ new cell] "Elasticity" section
                  - [- cell] removed redundant table
- Artifact:       versions/v004.ipynb · v004.md
- Status:         awaiting review
- Open questions: <needs the author's call>
```

## Registry formats

`INDEX.md` (one row per thesis):

```md
| ID | Title | Status | Version | Updated | Post |
|----|-------|--------|---------|---------|------|
| 0001 | ... | drafting | v003 | 2026-11-09 | — |
```

`JOURNAL.md` (chronological, newest at bottom):

```md
| Date | ID | Ver | Summary |
|------|----|-----|---------|
| 2026-11-09 | 0001 | v004 | rewrote intro; added elasticity |
```

## Statuses

`seed → framing → drafting → review → ready → published` (or `parked`).

- **review** — a version is proposed and awaiting the author.
- **ready** — approved; queued for promotion.
- **published** — promoted to `posts/`; record `publishedPost` in `state.json`.
- **parked** — paused, preserved, out of the active loop.

## Privacy (non-negotiable)

- `_theses/` is **git-ignored** — never commit, push, or copy its content to a
  tracked path before promotion.
- Drafts must never render into the published site. Quarto skips `_`-prefixed
  paths, so `_theses/` is excluded by convention; keep the leading underscore.
- Publishing stays manual and only from `posts/` (see `AGENTS.md`).

## Promotion to a published post

When a thesis is **ready**:

1. Copy `draft.ipynb` to `posts/<slug>/<slug>.ipynb`; confirm the front-matter cell
   (`title`, `description`, `date`, `categories`, `format.html.code-fold: true`,
   `jupyter: python3`).
2. Move `assets/` in; run the `faoot-voice` pass on the prose.
3. Render, commit `docs/` + source, push (normal publishing flow).
4. Set `status: published` and `publishedPost: posts/<slug>/`; log the promotion.
