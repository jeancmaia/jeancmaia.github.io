# Voice samples — annotated

Verbatim excerpts from the canonical corpus,
`posts/tutorial-mcglm/tutorial_mcglm.qmd`. Use these to calibrate tone and rhythm.
Each block names the device it demonstrates.

## Opening / historical framing

> The Multivariate Covariance Generalized Linear Model (MCGLM) is a universalization
> of the classic statistical model GLM, widening for multivariate and non-independent
> response fitting. Due to its pliancy and explicit specification, this unified model
> can support many statistical analyses on a wide variety of data and distinct traits.
> Aiming to foment the pervasiveness of statistical analysis with MCGLM support, this
> essay instills MCGLM and its comprehensive new Python library - the `mcglm`.

*Notes:* long, clause-stacked opening; `pliancy`, `foment`, `pervasiveness`,
`instills` in the signature register; ` - ` used as a dash; `mcglm` backticked.

> Dated at the beginning of the 19th century and controversial about actual
> authorship, the least squares method established an optimization proposal `[1]`.

> Stepping ahead two years, Wedderburn, one of the authors of GLM, published in 1974
> one of the most iconic papers of history. "Quasi-Likelihood Functions, Generalized
> Linear Models, and the Gauss-Newton Method".

> Finally, in 2016, Bonat and Jørgensen published the MCGLM, A brand new family of
> Statistical Models: Multivariate Covariance Generalized Linear Models.

*Notes:* the timeline arc — "Dated at ...", "Stepping ahead ...", "Finally, in ..." —
and the habit of quoting paper titles verbatim.

## Humility / self-aware aside

> According to McCullagh, P and Nelder, J.A, 1989 in their fantastic book "Generalized
> Linear Models", yet rephrased by myself, an enthusiast disciple, a linear regression
> can be decomposed into two components: `systematic` and `random` parts.

*Notes:* collegial hedge plus a self-deprecating narrator aside. The colon delivers a
two-item set, both backticked.

## Enumeration — "To cite a few"

> To cite a few examples: `identity`, `inverse` and `exponential-matrix` `[22]`.

> To cite a few, mixed models, moving averages and compound symmetry.

*Notes:* lists are inline and comma/semicolon separated — never bullets. "To cite a
few" is the standing opener.

## Verdicts after a fit (metric + plain language)

> By the `pAIC` metric, the usual `Tweedie` variance function is a suitable pick.

> By the `pAIC`, the adjustment with `Poisson Tweedie` power set 1.2895 is lightly
> better than `Poisson` 1. It points out that the distribution `Poisson Tweedie` is the
> best option for this data learning.

> The loglog link is the best pick for this analysis.

> Displacement q as 1 as the best fit.

*Notes:* terse, declarative verdicts closing a block of analysis. `lightly better`,
`best pick`, `points out that` are signature phrasings.

## Interpreting results in plain language

> The straightforward takeaway is: At day 0, the average response time is roughly 251
> seconds.

> Among covariates `block`, `water` and `potassium`, by Wald test, potassium levels are
> statistically significant for the model; the higher the potassium level, the bigger
> grain size. Variance is constant on 5.862.

*Notes:* the semicolon joins statistic to interpretation; "The straightforward
takeaway is:" is a reusable frame.

## Short declaratives as rhythm breaks

> That is a long-tail distribution.

> The fitting looks good.

> The fitting seems good.

> The brand new library `mcglm`.

> For a bound analysis, we analyze the iconic titanic dataset.

*Notes:* after long sentences, a one-line sentence lands the judgment. Mirrors the
voice's long/short cadence.

## "As long as" (= since / given that) — signature connector

> As long as statisticians cannot know the distribution upfront, the `quasi-likelihood`
> play an essential role in statistical models.

> As long as the Pearson residuals aren't shapeless, they may point to a non-optimal
> fitting.

> As long as `seed` is a count variable, a straightforward and canonical way to model
> it is Poisson.

*Notes:* appears repeatedly as a causal/conditional opener. Preserve as a voice tell;
do not "fix" it to "Since" unless clean copy is requested.

## "allude to" (= indicate / point to)

> Days at 10.46 allude to total change to response time by unit changes on Days...

> The dispersion parameters allude to random effects within individuals throughout the
> days.

> The last three components' rhos allude to the correlation coefficient among responses.

## Direct address & closing invitation

> Let's leverage the `mcglm` to adjust non-independent data, illustrated by a Moving
> Average and Mixed Model analysis, two iconic statistical models.

> Do not hesitate to leverage `mcglm` on your analysis and leave feedback. Thanks.

*Notes:* first-person plural for the work, second-person for the send-off.

## Structural tics

- Horizontal rules separating movements: `---`, `------`, `------------------`.
- Section heads over time/topic: `### MCGLM`, `### Modeling time`,
  `### Non-independent section`, `#### Multivariate Models`, `##### 1. Diabetes dataset`.
- Code cells tagged `#| tags: []`; prose introduces each table/plot:
  *"The following table summarizes the variance functions cited:"*,
  *"The figure below illustrates the `Binomial` and `Poisson` models."*
- Sources gathered under `Refs:` as raw URLs, then a numbered `References` list.
