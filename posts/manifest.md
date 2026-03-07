# Manifest: Microeconomics for Data Scientists

## Series Overview

A five-article series bridging microeconomic theory with practical data science applications. The guiding principle is "demonstration beats abstraction"—each article grounds theory in a concrete, running use case.

**Target audience:** Data scientists and ML practitioners seeking principled frameworks for modeling behavior, estimating causal effects, and simulating counterfactuals.

**Running use case:** A market of 7 competing streaming services with distinct catalogs, possible overlap, and different price points. Each article advances the analysis of this market.

---

## Article Sequence

| # | Title | Core Question | Key Payoff |
|---|-------|---------------|------------|
| 1 | The Consumer's Problem | How do individuals choose? | Individual demand derivation |
| 2 | From Preferences to Market Demand | How do choices aggregate? | Market demand estimation |
| 3 | Markets, Surplus, and Welfare | Who gains and loses? | Surplus visualization |
| 4 | Price Wars Are a Model Choice | How do firms compete? | Competition regime diagnosis |
| 5 | Dynamic Pricing as Surplus Expansion | Can pricing create value? | Welfare simulation |

---

## Article 1: The Consumer's Problem

**Thesis:** Consumer choice follows from constrained optimization over preferences, and understanding this structure lets us predict how choices shift when prices or options change.

**Inner topics:**
- Utility (definition, cardinal vs. ordinal)
- Preferences (completeness, transitivity, non-satiation)
- Goods, bundles, consumption space
- Indifference curves (definition, properties, graphical representation)
- Marginal Rate of Substitution (MRS)
- Budget constraints (definition, slope as price ratio, shifts)
- Utility maximization (tangency condition, corner vs. interior solutions)
- Deriving individual demand from the optimization problem

**DS connection:** Framing recommendation/personalization as utility inference; constrained optimization as a modeling primitive.

**Payoff:** Derive a single consumer's demand curve for streaming subscriptions.

**Cliffhanger:** One consumer's demand is useful, but markets have millions. How do we go from individual quirks to market-level patterns?

---

## Article 2: From Preferences to Market Demand

**Thesis:** Individual preferences aggregate into market demand, but the shape of that demand depends heavily on how we model and estimate those preferences.

**Inner topics:**
- Utility function forms (Cobb-Douglas, CES, Quasilinear)
- Estimation approaches (Revealed preference, Discrete choice models, Conjoint analysis)
- Aggregation (Horizontal summation, market demand construction, heterogeneity effects)
- Elasticity concepts (Own-price, cross-price, income elasticity)

**DS connection:** Discrete choice models as bridge between micro theory and ML classification; elasticity as causal quantity.

**Payoff:** Estimate demand curves for the 7 streaming services; simulate redistribution from catalog or price changes.

**Cliffhanger:** We know how consumers respond—but who sets those prices? Enter supply and welfare.

---

## Article 3: Markets, Surplus, and Welfare

**Thesis:** Prices determine how much value gets created and who captures it. Surplus analysis provides a welfare lens for evaluating market outcomes.

**Inner topics:**
- Cost functions (fixed, variable, total, marginal, average)
- Supply curve (derivation, market power caveat)
- Market equilibrium (supply meets demand, comparative statics)
- Surplus (consumer, producer, total, Pareto efficiency)
- Deadweight loss (definition, sources, welfare benchmark)

**DS connection:** Surplus as objective function for pricing optimization; DWL as interpretable inefficiency metric.

**Payoff:** Visualize surplus in the streaming market; compute DWL under price floors or collusion.

**Cliffhanger:** We've assumed prices are given. But streaming is an oligopoly—7 firms reacting to each other. How does strategic interaction change the picture?

---

## Article 4: Price Wars Are a Model Choice, Not a Mystery

**Thesis:** Whether a market exhibits cutthroat competition or stable markups reflects structural features that map onto distinct models—and data can identify which regime applies.

**Inner topics:**
- Market structure taxonomy (perfect competition, monopoly, oligopoly, monopolistic competition)
- Game theory essentials (players, strategies, payoffs, Nash equilibrium, best response)
- Bertrand competition (price choice, homogeneous result, paradox, differentiated escape)
- Cournot competition (quantity choice, residual demand, reaction functions, N-firm convergence)
- Model selection (capacity constraints, differentiation, information, empirical signatures)
- Structural estimation (recovering conduct, counterfactual simulation)

**DS connection:** Structural models as causal machinery; simulation for policy/strategy evaluation.

**Payoff:** Diagnose whether streaming services compete Bertrand or Cournot; simulate a merger reducing market to 5 players.

**Cliffhanger:** We've modeled static competition. Real pricing is dynamic. Can dynamic pricing create surplus, not just extract it?

---

## Article 5: Dynamic Pricing as Surplus Expansion

**Thesis:** Dynamic pricing can expand total surplus under the right conditions by better matching heterogeneous demand to capacity over time.

**Inner topics:**
- Price discrimination (first, second, third degree; welfare effects)
- Dynamic pricing mechanisms (intertemporal, peak-load, demand-responsive, personalized)
- Welfare analysis (conditions for expansion vs. redistribution, identification challenges)
- DS integration (demand forecasting, causal price sensitivity, welfare simulation, fairness)

**DS connection:** The full loop—estimate demand → forecast heterogeneity → optimize pricing → evaluate welfare.

**Payoff:** Simulate dynamic pricing for streaming and measure whether it increases total surplus or merely shifts it.

**Series closing:** From individual preferences to market demand, through welfare, strategic competition, and dynamic pricing—microeconomic structure gives data scientists causal and normative frameworks for asking not only "what will happen" but "what should we do."

---

## Progress Tracking

| Article | Status | Draft Location |
|---------|--------|----------------|
| 1 | Not started | — |
| 2 | Not started | — |
| 3 | Not started | — |
| 4 | Not started | — |
| 5 | Not started | — |

---

## References Repository

Accumulate key references here as articles develop:

### Textbooks
- (to be added)

### Papers
- (to be added)

### Data Sources
- (to be added)
