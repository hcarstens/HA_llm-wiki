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
| **Heuristic Algebra (v0.5)** | Canonical | [heuristic-algebra.md](heuristic-algebra.md) |

Full operator set: $\{\oplus, \oplus_{\text{bio}}, \oplus_{\text{ha}}, \oplus_{\text{inn}}, \neg, \sim, \leftrightarrow, \bot, \pi, \delta, \uparrow\}$

## Axiom Inventory

| Axiom | Confidence | Page |
|-------|-----------|------|
| Evidence-Action Proportionality | Medium | [evidence-action-proportionality.md](heuristics/evidence-action-proportionality.md) |
| Calibrated Confidence | Medium | [calibrated-confidence.md](heuristics/calibrated-confidence.md) |
| Asymmetric Disconfirmation | Medium | [asymmetric-disconfirmation.md](heuristics/asymmetric-disconfirmation.md) |
| Heuristics of Libraries (HLib) | Medium-High | [libraries.md](heuristics/libraries.md) |
| Early Heuristics Project Synthesis | Medium-High | [early-heuristics-project-synthesis.md](heuristics/early-heuristics-project-synthesis.md) |

## Operator Inventory

| Operator | Symbol | Page |
|----------|--------|------|
| Combination (Union) | $\oplus$ | [heuristic-algebra.md §1](heuristic-algebra.md) |
| Biological Selection | $\oplus_{\text{bio}}$ | [heuristic-algebra.md §1a](heuristic-algebra.md) |
| Harmonic Arrangement | $\oplus_{\text{ha}}$ | [harmonic-layering.md](operators/harmonic-layering.md) |
| Innovative Recombination | $\oplus_{\text{inn}}$ | [heuristic-algebra.md §1a](heuristic-algebra.md) |
| Transformation (Negation) | $\neg$ | [negation-check.md](operators/negation-check.md) |
| Similarity | $\sim$ | [heuristic-algebra.md §3](heuristic-algebra.md) |
| Resonance | $\leftrightarrow$ | [heuristic-algebra.md §3a](heuristic-algebra.md) |
| Contradiction | $\bot$ | [heuristic-algebra.md §1](heuristic-algebra.md) |
| Projection | $\pi$ | [heuristic-algebra.md §4](heuristic-algebra.md) |
| Decompression | $\delta$ | [heuristic-algebra.md §5](heuristic-algebra.md) |
| Update | $\uparrow$ | [heuristic-algebra.md §6](heuristic-algebra.md) |
| Iterative Refinement | — | [iterative-refinement.md](operators/iterative-refinement.md) |

## Scaffold Leaderboard (Latest: Campaign H2)

| # | Scaffold | H2 Elo | vs CR | Derivation | Page |
|---|----------|--------|-------|------------|------|
| 1 | **Lucid Judgment** | **1827** | +358 | $\oplus_{\text{ha}}$(DC, RR, SJ) | [lucid-judgment.md](scaffolds/lucid-judgment.md) |
| 2 | **Anticipatory Navigation** | **1739** | +270 | $\oplus_{\text{bio}}$(F, FPS, Stat) | — |
| 3 | Actionable Reasoning | 1732 | +263 | $\oplus_{\text{bio}}$(CR, DC, AR) | — |
| 4 | Sovereign Judgment | 1697 | +229 | $\oplus_{\text{bio}}$(DC, RR, SJ) | — |
| 5 | Decisive Calibration | 1696 | +228 | $\oplus_{\text{bio}}$(CR, MR) | — |
| 10 | *Temporal Lucidity* | *1625* | +157 | $\oplus_{\text{ha}}$(AN, LJ) | — |
| 13 | *Kinetic Epistemics* | *1521* | +52 | $\oplus_{\text{inn}}$(AN, LJ) | — |
| 26 | *none (baseline)* | *1030* | −439 | — | — |

Campaigns: [H1](experiments/2026-03-23_campaign-h1-scaffold-tournament.md) (26 conditions, 185 experiments) | [H2](experiments/2026-04-xx_campaign-h2-temporal-lucidity.md) (26 conditions, 180 experiments) | [Retrospective](experiments/2026-04-05_heuristics-project-retrospective.md) | [Build-Next Retrospective](experiments/2026-04-05_what-to-build-next-retrospective.md)

**Key findings across H1–H2:**
- The compression mechanism determines scaffold quality ($\oplus_{\text{ha}}$ vs. $\oplus_{\text{bio}}$ on same inputs → 231-point gap in H1)
- $\oplus_{\text{ha}}$ works best within families sharing lineage; $\oplus_{\text{bio}}$ works best for diverse sources
- Stage 3 composites show diminishing returns — combining two strong Stage 2 composites regresses toward the mean
- Temporal reasoning (AN, #2) is a viable second path alongside epistemic reasoning (LJ, #1)

## Recent Lint Findings

_No lint audits yet. Run the first audit to populate this section._

## Quick Links

- [Campaign H2 Results](experiments/2026-04-xx_campaign-h2-temporal-lucidity.md) — latest
- [Campaign H1 Results](experiments/2026-03-23_campaign-h1-scaffold-tournament.md)
- [Lucid Judgment + LLM-Wiki](scaffolds/lucid-judgment-llm-wiki.md)
- [Applications](applications/)
- [CLAUDE.md](CLAUDE.md) — Standing instructions & conventions
- [ha_llm-wiki.md](ha_llm-wiki.md) — Original blueprint
- [Heuristic Algebra Paper](heuristic_algebra_paper.pdf) — Carstens, 2026
- [NotebookLM HA Overview](applications/notebooklm-ha-overview.md) — AI-generated overview (external, pending ingest)
- [What to Build Next Synthesis](applications/what-to-build-next-synthesis.md) — productization & tooling phase
- [Voice-Activated Heuristic Agent](applications/voice-activated-heuristic-agent.md) — $\pi_7$(LJ $\oplus$ AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ HAg) voice agent spec
- [Heuristic Agent](applications/heuristic-agent.md) — Python agent shell with multi-provider LLM, sentinel, audio agent
- [Self-Repairing Agents](applications/self-repairing-agents.md) — AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ LJ for autonomous failure diagnosis and recovery
