# Introduction style map (private article 0001, v031)

This is a **paraphrased analysis of style**, not an excerpt from the private
draft. The source lives under git-ignored `_theses/`; do not reproduce its prose
here. Use this map if the local draft is unavailable, alongside `../SKILL.md`.

## Shape of the opening

- **Entry:** begin with a recognizable technical tension, posed in terms of
  what a practitioner is trying to do and what can go wrong. Explain the
  baseline with one concrete contrast before introducing formal definitions.
- **Connection:** bring the baseline into the article's actual domain. Give a
  compact operational definition of any new concept, then show why a narrower
  training objective can yield a broader observed behavior without claiming
  the latter was guaranteed by the former.
- **Complication:** introduce one or more results that qualify the baseline.
  State how the relevant outcome was measured and what changed in the setup;
  attach a caveat before the reader overgeneralizes.
- **Shift of setting:** move from what happens during fitting to what happens
  when the system is used. Explicitly distinguish changing an input, spending
  more computation, and changing learned parameters when relevant.
- **Evaluation:** say which old test still matters, which new failure modes it
  misses, and what would need to be checked. Finish with a preview of the
  actual analysis, not a promise that the field has been overturned.

## Paragraph mechanics

- Mostly sustained paragraphs of about four to seven sentences, not bullet
  points or a rigid template. A topic sentence sets a direction; the body
  explains a mechanism, study, or concrete case; the end often states a
  qualification or consequence.
- Sentence lengths move between short hinges and longer explanatory clauses.
  The rhythm comes from **question → explanation → qualification**, or
  **familiar claim → counterexample → boundary**; not from ornate syntax.
- Colon: bring a definition, pivotal question, or procedure into focus.
  Semicolon: connect two claims that belong together. Em dash: insert a short
  clarification without losing the main line. Each mark should earn its place.
- The short sentence often changes the pressure of the paragraph: it marks
  that a plausible conclusion has not actually been established, or that an
  additional check is needed.

## Epistemic habits

- Say *can*, *may*, or *in this setting* when a result is contingent. Do not
  replace a precise caveat with repeated vague hedging.
- Where a finding comes from a narrow experiment, name the setting and resist
  extending it to a different technology without evidence.
- Keep the object of each claim clear: training loss, held-out behavior, a
  prompted response, an action, or a downstream outcome are not interchangeable.
- Rather than praising flexibility, ask what makes a response or decision
  testable. A plausible explanation is not evidence that an action worked.

## Calibration exercise (original, not from the draft)

**Too vague or grand:** “The new search system revolutionizes research and
eliminates wrong answers.”

**Closer in cadence and restraint:** “A search system can rank documents well
on a test set and still bury the one a researcher needs after the collection
changes. The distinction is practical: a retrieval score measures performance
on known queries; it does not establish whether a proposed answer cites the
right source. That claim needs a check against the document itself.”

This example illustrates the *movement*—a familiar test, a specific limit, a
checkable next question—not a stock phrasing to insert into posts.
