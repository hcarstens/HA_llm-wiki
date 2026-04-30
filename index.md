---
title: "Home"
nav_order: 1
permalink: /
---

# Heuristic Algebra LLM-Wiki

> A self-correcting, high-fidelity knowledge engine powered by Lucid Judgment and Heuristic Algebra.

## Foundational Reference

| Document | Status | Page |
|----------|--------|------|
| **Heuristic Algebra (v0.5)** | Canonical | [Heuristic Algebra](heuristic-algebra/) |

Full operator set: $\{\oplus, \oplus_{\text{bio}}, \oplus_{\text{ha}}, \oplus_{\text{inn}}, \neg, \sim, \leftrightarrow, \bot, \pi, \delta, \uparrow\}$

## Axiom Inventory

| Axiom | Confidence | Page |
|-------|-----------|------|
| Agentic Search Optimization | Medium-High | [Agentic Search Optimization](heuristics/agentic-search-optimization/) |
| Evidence-Action Proportionality | Medium | [Evidence-Action Proportionality](heuristics/evidence-action-proportionality/) |
| Calibrated Confidence | Medium | [Calibrated Confidence](heuristics/calibrated-confidence/) |
| Asymmetric Disconfirmation | Medium | [Asymmetric Disconfirmation](heuristics/asymmetric-disconfirmation/) |
| Heuristics of Libraries (HLib) | Medium-High | [Heuristics of Libraries](heuristics/libraries/) |
| Early Heuristics Project Synthesis | Medium-High | [Early Heuristics Project Synthesis](heuristics/early-heuristics-project-synthesis/) |

## Operator Inventory

| Operator | Symbol | Page |
|----------|--------|------|
| Combination (Union) | $\oplus$ | [Heuristic Algebra](heuristic-algebra/) |
| Biological Selection | $\oplus_{\text{bio}}$ | [Heuristic Algebra](heuristic-algebra/) |
| Harmonic Arrangement | $\oplus_{\text{ha}}$ | [Harmonic Layering](operators/harmonic-layering/) |
| Innovative Recombination | $\oplus_{\text{inn}}$ | [Heuristic Algebra](heuristic-algebra/) |
| Transformation (Negation) | $\neg$ | [Negation Check](operators/negation-check/) |
| Similarity | $\sim$ | [Heuristic Algebra](heuristic-algebra/) |
| Resonance | $\leftrightarrow$ | [Heuristic Algebra](heuristic-algebra/) |
| Contradiction | $\bot$ | [Heuristic Algebra](heuristic-algebra/) |
| Projection | $\pi$ | [Heuristic Algebra](heuristic-algebra/) |
| Decompression | $\delta$ | [Heuristic Algebra](heuristic-algebra/) |
| Update | $\uparrow$ | [Heuristic Algebra](heuristic-algebra/) |
| Iterative Refinement | — | [Iterative Refinement](operators/iterative-refinement/) |

## Scaffold Leaderboard (Latest: Campaign H2)

| # | Scaffold | H2 Elo | vs CR | Derivation | Page |
|---|----------|--------|-------|------------|------|
| 1 | **Lucid Judgment** | **1827** | +358 | $\oplus_{\text{ha}}$(DC, RR, SJ) | [Lucid Judgment](scaffolds/lucid-judgment/) |
| — | Generative Imagination | — | — | $\pi_5$(Imagination $\oplus_{\text{inn}}$ Creativity) | [Generative Imagination](scaffolds/generative-imagination/) |
| — | Forecasting Scaffold | — | — | Practitioner domain knowledge | [Forecasting Scaffold](scaffolds/forecasting-scaffold/) |
| 2 | **Anticipatory Navigation** | **1739** | +270 | $\oplus_{\text{bio}}$(F, FPS, Stat) | — |
| 3 | Actionable Reasoning | 1732 | +263 | $\oplus_{\text{bio}}$(CR, DC, AR) | — |
| 4 | Sovereign Judgment | 1697 | +229 | $\oplus_{\text{bio}}$(DC, RR, SJ) | — |
| 5 | Decisive Calibration | 1696 | +228 | $\oplus_{\text{bio}}$(CR, MR) | — |
| 10 | *Temporal Lucidity* | *1625* | +157 | $\oplus_{\text{ha}}$(AN, LJ) | — |
| 13 | *Kinetic Epistemics* | *1521* | +52 | $\oplus_{\text{inn}}$(AN, LJ) | — |
| 26 | *none (baseline)* | *1030* | −439 | — | — |

Campaigns: [H1](experiments/2026-03-23_campaign-h1-scaffold-tournament/) (26 conditions, 185 experiments) | [H2](experiments/2026-04-xx_campaign-h2-temporal-lucidity/) (26 conditions, 180 experiments) | [Retrospective](experiments/2026-04-05_heuristics-project-retrospective/) | [Build-Next Retrospective](experiments/2026-04-05_what-to-build-next-retrospective/)

**Key findings across H1–H2:**
- The compression mechanism determines scaffold quality ($\oplus_{\text{ha}}$ vs. $\oplus_{\text{bio}}$ on same inputs → 231-point gap in H1)
- $\oplus_{\text{ha}}$ works best within families sharing lineage; $\oplus_{\text{bio}}$ works best for diverse sources
- Stage 3 composites show diminishing returns — combining two strong Stage 2 composites regresses toward the mean
- Temporal reasoning (AN, #2) is a viable second path alongside epistemic reasoning (LJ, #1)

## Recent Lint Findings

_No lint audits yet. Run the first audit to populate this section._

## Quick Links

- [Campaign H2 Results](experiments/2026-04-xx_campaign-h2-temporal-lucidity/) — latest
- [Campaign H1 Results](experiments/2026-03-23_campaign-h1-scaffold-tournament/)
- [Agentic Search](agentic-search/) — background and ASO framing
- [Agentic Search Optimization](heuristics/agentic-search-optimization/) — site optimization heuristic
- [Lucid Judgment + LLM-Wiki](scaffolds/lucid-judgment-llm-wiki/)
- [Applications](applications/)
- [Blueprint](ha_llm-wiki/) — original blueprint
- [NotebookLM HA Overview](applications/notebooklm-ha-overview/) — AI-generated overview (external, pending ingest)
- [What to Build Next Synthesis](applications/what-to-build-next-synthesis/) — productization & tooling phase
- [Voice-Activated Heuristic Agent](applications/voice-activated-heuristic-agent/) — $\pi_7$(LJ $\oplus$ AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ HAg) voice agent spec
- [Heuristic Agent](applications/heuristic-agent/) — Python agent shell with multi-provider LLM, sentinel, audio agent
- [Self-Repairing Agents](applications/self-repairing-agents/) — AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ LJ for autonomous failure diagnosis and recovery
