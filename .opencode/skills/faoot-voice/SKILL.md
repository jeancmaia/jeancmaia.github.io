---
name: Faoot's Writing Voice
description: Write and edit prose in Jean Carlos Faoot Maia's ("Faoot") voice. Use for blog posts, essays, tutorials, and technical writing. Calibrated to the precise, measured prose and rhythm of the introduction to private article 0001, v031, with portable style guidance when the draft is unavailable.
---

# Faoot's Writing Voice

**Primary calibration:** the introduction of the local, private article **0001,
v031** (`_theses/0001-*/versions/v031.md`, from after the YAML front matter up to
the first `###` heading). Read those seven paragraphs before substantial prose
work when the draft is available. **The introduction alone is the style model:**
do not infer the voice from the rest of the article. The draft is git-ignored;
never quote, copy, or move its text into a tracked skill file, example, or post
before the author approves promotion. When working without the private draft,
use this skill and [`reference/style-map.md`](reference/style-map.md) as the
portable specification. The older MCGLM post remains an example of the author's
earlier writing, **not** the default voice for new prose.

## The voice in one line

Precise, measured technical prose that takes a familiar idea, tests where it
stops being enough, and leaves the reader with a practical distinction rather
than a sweeping conclusion.

## Language and stance

- Use clear academic English, not ceremonial or promotional language. Prefer
  *fit, change, check, estimate, observed, held-out, possible, under a stated
  condition* to ornamental synonyms. A specialized term earns its place by
  doing explanatory work; define it in ordinary language at first use. Prefer
  full forms to conversational contractions.
- Start from a real conceptual problem or tension. State what is being compared
  and why it matters before naming a result, listing methods, or giving a
  formula. A direct question can sharpen the opening; do not require one.
- Make technical distinctions explicit: which variable is held fixed, which
  process changes, what is observed, and what the evidence does *not* establish.
  Distinguish a mechanism, an observation, and an interpretation. Do not turn
  a reported pattern into a universal law or a suggestive analogy into a cause.
- Use *we* sparingly for shared reasoning or the article's route; otherwise
  prefer the model, training procedure, experiment, or decision as subject.
  Address the reader through the argument, not through chatty invitations.
- Credit specific findings to researchers and cite them inline as `[n]` where
  the source warrants it. Brief attribution supports the reasoning; a historical
  timeline is not a required opening.
- Backtick technical terms when introducing or emphasizing them, as in
  `generalization`, `inference`, or `capacity`; use ordinary type for surrounding
  explanation. Expand abbreviations at first mention. Do not backtick every
  noun or use formatting in place of a definition. Use italics or bold rarely
  to mark a distinction that matters.

## Rhythm and punctuation

- Build paragraphs from connected sentences of varied length. The model
  introduction uses roughly four to seven sentences per paragraph, not a fixed
  quota. Typically begin with a clear claim, develop it through a definition,
  example, or observation, then tighten the claim with a limit or consequence.
  A short sentence can land after a longer explanation; it is not mandatory at
  the end of every paragraph.
- Alternate compact declaratives with medium and longer sentences that carry
  real logical relationships. Use a colon to introduce a definition, question,
  or concrete consequence; a semicolon for closely related claims; an em dash
  for a brief qualification or apposition. Do not stack clauses just to sound
  literary or replace all em dashes with spaced hyphens.
- Favor transitions that advance the argument: *the same tension*, *with more
  capacity*, *beyond sampling*, *in practice*, *yet*, *none of these*. Return
  to an earlier distinction when the topic changes, rather than announcing a
  disconnected new topic.
- Use contrast to keep claims honest: *X can happen, but is not guaranteed*;
  *Y changes the request, not the weights*. Such sentences should clarify
  the particular case, not become a repeated verbal tic.
- Let the final sentence of a movement name its practical boundary or
  implication plainly. Avoid a grand reveal, a slogan every paragraph, or a
  forced metric-and-verdict pattern when no result was measured.

## How the argument moves

1. **Frame a familiar problem.** Give the baseline intuition and its test;
   explain enough for a reader outside the subfield to follow.
2. **Introduce the complication.** Show a concrete observation or result that
   qualifies the baseline. Say under what conditions it was observed.
3. **Draw the boundary.** Explain what follows and what does not. In particular,
   do not imply that one phenomenon proves another merely because both involve
   generalization, flexibility, or adaptation.
4. **Move to use and evaluation.** Ask what changes when the trained system is
   used, what stays fixed, and what evidence would check its output or action.
5. **Offer a restrained route forward.** For an introduction, end by previewing
   the article's actual sections and naming the question they answer. For a
   body section, hand off to the next question. No obligatory invitation or
   thank-you.

This is a reasoning pattern, **not** an instruction to make every piece about
machine learning or to reproduce the seven-paragraph structure. Preserve the
author's topic, evidence, and intended level of detail.

## Do / don't

**Do**
- Define an unfamiliar term where the reader first needs it, then use it
  consistently.
- Tie each finding to its scope and give the reader a concrete implication.
- Separate training, deployment, and evaluation when the difference matters.
- Use short, plain sentences for decisive limits after a nuanced explanation.
- Check every factual claim, citation, number, and implied causal link.

**Don't**
- Don't imitate the older MCGLM register by forcing *epitomize*, *pliancy*,
  *foment*, *allude to*, *straight off the bat*, or *to cite a few*.
- Don't open with a ceremonial history of the field unless history is the point.
- Don't claim a mechanism has been shown when only an outcome was observed.
- Don't backtick all technical nouns, over-bold takeaways, or make every
  sentence a semicolon chain.
- Don't use hype, generic AI transitions, unexplained acronyms, an automatic
  reader invitation, or a closing “Thanks.”

## Quarto conventions (when writing a post)

Follow the post's existing format and `AGENTS.md`. The house style is separate
from the voice: YAML front matter, inline numbered citations, code cells, and
section headings depend on the document. In notebook posts keep the raw YAML
cell first and preserve cell IDs and stored outputs when editing prose. Never
use a private thesis draft as a source of publishable text before promotion.

## Before sharing prose

- [ ] Opens with a problem or tension, not decorative background.
- [ ] Definitions are concrete; examples and citations support their claims.
- [ ] Sentence lengths vary, and punctuation tracks logic rather than ornament.
- [ ] Each conceptual leap states its conditions and limits.
- [ ] The ending tells the reader what can be concluded or checked next.
- [ ] Nothing from `_theses/` was copied into a tracked artifact.
