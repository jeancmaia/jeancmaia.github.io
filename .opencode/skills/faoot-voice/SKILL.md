---
name: Faoot's Writing Voice
description: Write and edit prose in Jean Carlos Faoot Maia's ("Faoot") voice. Use for any blog post, essay, tutorial, or technical write-up — especially content in this repo or written on his behalf. Encodes his lexicon, sentence rhythm, rhetorical moves, and Quarto post conventions, distilled from the canonical MCGLM article.
---

# Faoot's Writing Voice

**Canonical corpus:** `posts/tutorial-mcglm/tutorial_mcglm.qmd` — *"MCGLM, a unified
model for statistical analysis."* This post *is* the voice. Before writing anything
substantial, re-read its prose sections (ignore the code cells) and treat it as the
reference implementation. A curated, annotated set of excerpts lives in
[`reference/voice-samples.md`](reference/voice-samples.md).

**Adjacent registers (same author, lighter dialect):**
`posts/price-curves-agents/price_curves_agents.ipynb` and
`posts/hermes-xlr/hermes-xlr.ipynb` are more contemporary and structured — suitable
for modern technical posts. **MCGLM is the default and the core; relax toward the
others only when the brief calls for it.**

## The voice in one line

Formal, literary, unhurried — an enthusiast narrator who tells the *history of an
idea* before showing the math, treats the field as a discipline with lineage and
characters, and closes every result with a plain-language verdict.

## Voice fingerprint

### Register & diction
Elevated, essayistic academic prose with personal warmth. Reach for words such as:
*epitomize, instill, allude to, harness, leverage, pliancy, pervasiveness, foment,
universalize, postulation, primordial, subsequential, apparatus, entailed,
emblematic, iconic, canonical, straightforward, proper, in-deep*. Prefer full forms;
use contractions sparingly (`aren't`, `Let's`) rather than constantly.

### Sentence rhythm
Long, multi-clause sentences built with **colons and semicolons**, periodically cut
by a **short declarative verdict**. A typical paragraph is 2–4 long sentences plus a
one-line judgment:

> *"The fitting looks good."* · *"That is a long-tail distribution."* ·
> *"Displacement q as 1 as the best fit."*

### Person & stance
First-person plural for shared reasoning (*"we attempt"*, *"Let's leverage"*) and a
second-person invitation to close (*"Do not hesitate to ... leave feedback. Thanks."*).
Hedged and collegial, never salesy. Occasionally self-aware:

> *"...yet rephrased by myself, an enthusiast disciple..."*

### Punctuation & emphasis
The colon and semicolon do heavy lifting. **Backticks wrap every technical term,
model name, and function inline** — even mid-sentence and even for concepts
(`quasi-likelihood`, `Tweedie`, `mc_id`, `Fisher Scoring`). A spaced hyphen ` - ` or
` -- ` substitutes for the em-dash. Horizontal rules (`-----`) separate major
movements of a piece.

## Signature moves

1. **Open with history.** Anchor the topic in time and people before theory.
   > *"Dated at the beginning of the 19th century and controversial about actual authorship, the least squares method established an optimization proposal."*
   > *"Stepping ahead two years, Wedderburn, one of the authors of GLM, published in 1974 one of the most iconic papers of history."*
   > *"Finally, in 2016, Bonat and Jørgensen published the MCGLM..."*
2. **Name the literature.** Quote paper titles verbatim, credit authors, place the
   reader inside the research.
3. **"To cite a few."** Introduce open-ended enumerations this way — inline and
   semicolon-separated (`identity`, `inverse` and `exponential-matrix`), not bullet lists.
4. **Theory → method → code.** Explain the model, then the library/API, then the
   worked examples.
5. **A verdict per result.** After each fit, give a metric *and* a plain-language
   conclusion.
   > *"By the `pAIC` metric, the usual `Tweedie` variance function is a suitable pick."*
   > *"The straightforward takeaway is: At day 0, the average response time is roughly 251 seconds."*
6. **Interpret, don't report.** Translate coefficients into readable sentences:
   > *"the higher the potassium level, the bigger grain size."*
7. **Invite the reader out.** End with an offer and thanks.

## Sentence recipes

- **Historical frame:** `"Dated at [era], [subject] [did X], [context]."`
- **Advance the timeline:** `"Stepping ahead [time], [author], [credential], published ..."`
- **Introduce a set:** `"To cite a few[, examples]: X, Y and Z."`
- **Set up a try:** `"Straight off the bat, we attempt fitting as ...: `identity` and `constant`."`
- **Verdict:** `"By the `metric`, [subject] is a suitable pick / lightly better than ..."`
- **Takeaway:** `"The straightforward takeaway is: [plain sentence]."`
- **Close:** `"Do not hesitate to leverage [tool] on your analysis and leave feedback. Thanks."`

## Tells to keep (idiosyncrasies)

These are recognizable, low-frequency markers of the voice — preserve them where a
native sentence calls for them. **Do not manufacture new errors**, and do not sand
them away into blander prose unless the request is explicitly "clean copy".

- **`As long as` = since / given that** → *"As long as statisticians cannot know the distribution upfront, the `quasi-likelihood` play an essential role..."*
- **`allude to` = indicate / point to** → *"Days at 10.46 allude to total change..."*
- **`instill` / `epitomize`** in the sense of present / exemplify.
- **`lightly better`**, **`straight off the bat`**, **`It is plain to ...`**, **`We have got to set ...`**.

## Structural conventions (Quarto posts)

Match the repo's format; see `AGENTS.md` for the full post workflow.

- Front matter: `title`, `description`, `date`, `categories`, `format.html.code-fold: true`, `jupyter: python3`.
- Code cells open with `#| tags: []`; prose carries the narrative, code is illustration.
- Heading depth: `###` for top sections, `####` for groups, `##### 1. ...` for numbered
  subsections inside a tutorial.
- Figures use captions: `![Binomial Regression](regressao_binomial.png)`.
- Use `-----` rules to separate major movements; collect sources under a `Refs:` line
  (raw URLs) and a final numbered `References` list, cited inline as `[13]`.
- Tables are rendered as LaTeX `array` environments.

## Do / Don't

**Do**
- Frame with history and lineage before the math.
- Backtick every technical term.
- Alternate long, colon/semicolon-rich sentences with a short verdict.
- Give every result a metric and an interpretation.
- Address the reader and close with an invitation.

**Don't**
- No emoji, no hype (*"game-changing"*, *"supercharge"*, *"unlock"*).
- No choppy marketing fragments or bare bullet lists without prose framing.
- Don't over-bold — backticks, not bold, carry emphasis.
- Avoid generic AI filler: *"In today's fast-paced world"*, *"Let's dive in"*,
  *"It's important to note"*, *"In conclusion"*.
- Don't flatten the register into casual chat.

## Rewrites

| Generic | In voice |
| --- | --- |
| "The model performed well and the coefficient is significant." | "By the `pAIC`, the fitting is a suitable pick; moreover, the Wald test alludes that `Days` is statistically significant for the model." |
| "DBSCAN groups points by density." | "Dated at the heart of density-based clustering, `DBSCAN` associates points by the density of their neighborhood, a `primordial` idea for the family of clustering models." |
| "We fit a Poisson regression for the counts." | "As long as the outcome is a count, a `Poisson` model is a usual choice; straight off the bat, we fit it through the `Tweedie` variance function with power set as one." |

## Before you render: checklist

- [ ] Opens with history or context, not a definition.
- [ ] Technical terms are backticked inline.
- [ ] Long sentences are interleaved with at least one short verdict.
- [ ] Every result has a metric and a plain-language takeaway.
- [ ] Ends with an invitation and thanks.
- [ ] No emoji, no hype, no listicle sprawl.
- [ ] Front matter matches the repo conventions.
