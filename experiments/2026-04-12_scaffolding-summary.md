---
title: "Scaffolding Summary: From Reasoning to Creativity to Forecasting"
parent: "Experiments"
---

# Scaffolding Summary: From Reasoning to Creativity to Forecasting

**Date**: 2026-04-12
**Campaigns**: 20+ across reasoning (R1-R6), creativity (C1-C5), and forecasting (F1-F4)
**Total runs**: ~2,500 experiments across 4 providers

## The Core Discovery: Skeletons vs Programs

The entire scaffolding research program converges on a single structural insight: there are two fundamentally different kinds of scaffolds, and they follow different rules.

### Skeletons (structure without content)

A skeleton scaffold names the qualities the model should exhibit but gives no instructions on how to apply them or what domain to apply them in.

**CT scaffold (the only skeleton tested):**
```
Clarity, Accuracy, Precision, Relevance, Logical Coherence,
Evidential Sufficiency, Intellectual Humility, Fairness
```

Eight abstract labels. No process steps. No domain content. No directives. The model knows *what to be* but not *what to do*.

**Skeletons compose with heuristics.** The heuristic fills the skeleton with domain-specific content:
- CT + Economics = "be precise and logical" + "about scarcity, equilibrium, incentives" → +620 Elo
- CT + Forecasting = "be precise and logical" + "about base rates, uncertainty cones, calibration" → +431 Elo
- CT⊕ProbStats = Calibrated Reasoning → superadditive, +221 Elo over both components

### Programs (structure AND content)

A program scaffold tells the model what to do, step by step, with domain-specific directives.

**GI scaffold (creativity program):**
```
GI1. Identify one core assumption and deliberately violate it...
GI2. For each candidate, ask: "Has this been used before?" If yes, discard...
GI3. Take your most surprising candidate and recursively add depth...
GI4. Impose one hard limitation — a formal, perspective, or medium constraint...
GI5. Evaluate: Is this output novel AND valuable?
```

**FS scaffold (forecasting program):**
```
1. Start with the historical base rate and distribution...
2. State whether you expect trend continuation or mean reversion, and WHY...
3. Identify which direction the risks are skewed...
4. "Intellectual humility" does NOT mean forecasting the mean...
```

Each axiom is a concrete action. The model knows *what to do*.

**Programs don't compose with heuristics.** Adding a heuristic creates two competing instruction sets — the model tries to follow both, follows neither fully, and the output degrades:
- GI + Poetry = -99 Elo vs GI alone
- FS + Pattern Recognition = -97 Elo vs FS alone
- GI + any heuristic: all 25 hurt
- FS + any heuristic: all 25 hurt

## How Reasoning Evolved From Skeleton to Program

The reasoning campaign history tells the story of a skeleton gradually becoming a program through iterative composition:

```
R1:  CT skeleton                               → Elo ~1538
R2:  CT ⊕ ProbStats = Calibrated Reasoning     → Elo 1759 (superadditive)
R3:  CT ⊕ multiple = compound heuristics       → testing compositions
R4:  Master Reasoning (pre-composed program)    → Elo 1667
R5:  Decisive Calibration (pre-composed)        → Elo 1830
R6:  Reflexive Reasoning (pre-composed)         → Elo 1811
```

Each round added more content to the scaffold until the final compounds (Decisive Calibration, Reflexive Reasoning) were self-contained programs — specific process directives baked in, not just abstract quality labels.

**The R1-R6 progression was the transition from skeleton to program.** CT started as an empty framework. Each heuristic composition added content. The compounds are the end state — they no longer need external heuristics because the content is already inside.

**Prediction (untested):** Decisive Calibration and Reflexive Reasoning would NOT compose well with additional heuristics — because they're already programs, just like GI and FS. Only the original CT skeleton composes. The compounds are CT's final form, not an intermediate step.

## Why CT Is the Exception

CT composes because it's the only skeleton ever tested. It provides a meta-cognitive framework ("be clear, be precise, be fair") that different heuristics can fill with different domain content. The combination works because skeleton and heuristic serve different roles — one says *how to think*, the other says *what to think about*.

GI and FS don't compose because they already say both. GI says *how to think creatively* AND *what creative steps to take*. FS says *how to think about forecasts* AND *what analytical steps to perform*. A heuristic attachment has nowhere to add value — it can only compete with existing instructions.

The CT exception wasn't recognized until GI and FS showed the opposite pattern. The R1-R6 sequence looked like "scaffolds compose with heuristics" because the only scaffold tested was the one skeleton that does.

## The Three-Task Architecture

| | Reasoning | Creativity | Forecasting |
|---|---|---|---|
| **Scaffold** | CT (skeleton) | GI (program) | FS (program) |
| **Type** | Structure only | Structure + content | Structure + content |
| **Axiom style** | Abstract labels | Process directives | Analytical directives |
| **Composes?** | Yes — heuristics add +175-620 | No — heuristics subtract -99-196 | No — heuristics subtract -97-208 |
| **Optimal config** | CT + best heuristic | GI alone | FS alone |

| **Rubric** | Default (Depth/Structure/Reasoning) | Creativity (Novelty/Surprise/Coherence/Value) | Forecasting v2 (Robustness/Direction/Decision/Calibration) |
| **Scaffold lift vs bare** | +163-274 (CT alone), +620+ (CT+heuristic) | +427 (GI alone) | +133 (FS alone, with data) |
| **Best compound** | Decisive Calibration (Elo 1830) | N/A — GI alone | N/A — FS alone |
| **Evidence** | R1-R6 (12 campaigns) | C1-C5 (5 campaigns, 3 queries) | F1-F4 (4 campaigns, 4 queries) |

## The Rubric Discovery

C1 proved that **the rubric determines the result**. The same responses, re-judged with a different rubric, produced opposite conclusions:

| Finding | Default rubric | Creativity rubric |
|---------|---------------|-------------------|
| Scaffold rank | #1 | #20 |
| Bare prompt rank | #5 | #27 (last) |
| CT rank | #7 | #21 |
| Recombination rank | #26 | #5 |
| Conclusion | "Heuristics don't help creativity" | "Heuristics provide large creative lift" |

The rubric must match the task. Using the default (reasoning) rubric on creative tasks rewards structure over novelty — making CT scaffold look good and creative heuristics look bad. The creativity rubric rewards novelty over structure — revealing the actual creative value of heuristics.

For forecasting, the rubric matters less (F2 re-judge showed max ±2 rank shift) because forecasting scaffolds inherently address both calibration and robustness.

## Scaffold Design Principles (What We Learned)

### 1. Skeletons compose, programs don't

If your scaffold is a list of abstract qualities (like CT), heuristics will improve it by filling it with content. If your scaffold contains specific process instructions (like GI or FS), heuristics will degrade it by competing with those instructions.

### 2. Programs are stronger than skeletons

GI alone (Elo 1654 on creativity) beats CT + any heuristic (best: 1572). FS alone (Elo 1640 on forecasting) beats bare prompt by +86. Purpose-built programs outperform generic skeletons, even when the skeleton is enhanced with domain heuristics.

### 3. The rubric is part of the experiment

Choosing the wrong rubric doesn't just add noise — it inverts the signal. Always match rubric to task type: default for reasoning, creativity for creative tasks, forecasting for prediction tasks.

### 4. Data in the prompt changes scaffold rankings

For forecasting, scaffolds that analyze data (FS, SAAF) outperform scaffolds that reason about data (CF, AF) when actual time series data is in the prompt. Without data, reasoning-style scaffolds (CF) win. The scaffold must match both the task type AND the prompt structure.

### 5. Domain-named heuristics often fail on their own domain

Strategy failed on strategy queries. ML failed on ML queries. Forecasting heuristic (#17/25) underperformed when composed with FS on a forecasting task. Creativity heuristic was mid-pack when composed with GI. Domain-named heuristics overlap with domain scaffolds, creating redundancy not reinforcement.

## What Remains Unknown

1. **Do reasoning compounds (DC, RR) compose with heuristics?** The prediction is no — they're programs like GI and FS. But this hasn't been tested.

2. **Can a skeleton be built for creativity or forecasting?** CT works as a skeleton because its axioms are meta-cognitive (applicable to any domain). Could a creativity skeleton exist — abstract creative quality labels without process directives — that composes with creative heuristics?

3. **Does multi-query validation change the rankings?** GI is stable across 3 creative queries. FS rankings shift between F2 (no data) and F3 (with data). More forecasting queries with data would strengthen or weaken FS's position.

4. **Is there a universal skeleton?** CT works across domains (it lifts creative and forecasting output, just less than domain programs). Could CT be refined into a universal scaffold that provides more lift across all task types, even if it doesn't match the domain programs?

5. **Human evaluation.** All results use LLM judges. Whether LLM-judge preferences correlate with human preferences for reasoning quality, creative value, or forecast utility remains untested.

## Campaign Index

### Reasoning
| Campaign | Conditions | Queries | Key finding |
|----------|-----------|---------|-------------|
| Validation | 4 | 5 | Scaffold >> bare (+163 Elo) |
| R1 | 20 heuristics | 5 | Forecasting, Psychology, CT top standalone |
| R2 | 20 + CR | 5 | CR superadditive (#1 across providers) |
| Phase 6 | CT + domain | 5 | Domain matching works for some heuristics |
| Phase 7 | CT + 20 | 5 | CT + Economics = +620, 18/20 heuristics add lift |
| Phase 8a-d | CT + domain-specific | 5 | Forecasting wins its domain; Strategy, ML fail theirs |
| R4-R6 | 26 compounds | 5 | DC #1 (1830), RR #2 (1811), compounds dominate |

### Creativity
| Campaign | Conditions | Queries | Key finding |
|----------|-----------|---------|-------------|
| C1 | 25 heuristics (CT scaffold) | 1 | Rubric determines result; default rubric misleading |
| C1 re-judge | Same responses | 1 | Creativity rubric: Invention #1, CT #21, bare last |
| C2 | 4 creativity scaffolds | 1 | GI #1 (+127 vs bare), all 4 beat CT |
| C3 | GI + 25 heuristics | 1 | GI alone #1; all heuristics hurt (-99 to -196) |
| C4 | 4 creativity scaffolds | 1 | GI #1 again; identical ranking to C2 |
| C5 | 4 creativity scaffolds | 1 | GI #1 third time; ranking stable across 3 query types |

### Forecasting
| Campaign | Conditions | Queries | Data? | Key finding |
|----------|-----------|---------|:-----:|-------------|
| F1 | 5 scaffolds | 1 | No | SAAF #1 (flawed — no time series) |
| F2 | 7 scaffolds | 1 | No | CF #1 (flawed — no time series) |
| F2 re-judge | Same responses | 1 | No | CF #1 under both rubric versions |
| F3 | 7 scaffolds | 3 | Yes | FS #1, SAAF #2 (data-analysis scaffolds win with data) |
| F4 | FS + 25 heuristics | 1 | Yes | FS alone #1; all heuristics hurt (-97 to -208) |

## Could Skeleton-Based Scaffolds Have Won?

A natural question: if creativity and forecasting had followed CT's skeleton→composition→compound path (R1-R6), would they have eventually surpassed the programs designed directly via Heuristic Algebra?

## Related

- [Experiments](index.md)
- [Heuristic Algebra](../heuristic-algebra.md)
- [Lucid Judgment](../scaffolds/lucid-judgment.md)
- [Generative Imagination](../scaffolds/generative-imagination.md)
- [Forecasting Scaffold](../scaffolds/forecasting-scaffold.md)
- [Campaign H1 Results](2026-03-23_campaign-h1-scaffold-tournament.md)
- [Campaign H2 Results](2026-04-xx_campaign-h2-temporal-lucidity.md)

## Judgment

**Confidence**: High (90%) — Based on 20+ campaigns with ~2,500 experiments across 4 providers. Core discovery of skeletons vs programs is supported by consistent patterns across reasoning, creativity, and forecasting domains.

**Known Disconfirmers**: All results use LLM judges; human evaluation untested. Some campaigns had limited queries (e.g., C1-C5 used only 1-3 queries). Prediction about reasoning compounds not composing remains untested. Rubric dependency could introduce bias if rubrics are not task-matched.