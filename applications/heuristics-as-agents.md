---
title: "Heuristics as Agents"
parent: "Applications"
---

# Heuristics as Agents and Skills

> Operationalizing single heuristics as agentic constraints — the baseline before full Heuristic Algebra composition.

## Heuristics as Agents (2026-06)

Recent architectural experiments have validated that Heuristic Algebra can be operationalized directly as agentic constraints. Rather than attempting to prompt-engineer an LLM with massive contextual scaffolding, individual heuristics (e.g., *Heuristics of Metrics*, *Heuristics of AI Agents*) have been compressed and deployed as independent functional skills.

By injecting a single, focused heuristic into a sub-agent's system prompt at spawn, the agent fundamentally alters its reasoning style, depth, and output formatting to match the heuristic's underlying axioms. This provides a deterministic, constraint-based method for dynamically generating highly specialized expert agents (e.g., `ra1` for research, `ra2` for forecasting) without complex multi-prompt chaining. This serves as the foundational baseline before advancing to full multi-heuristic composition (Heuristic Algebra) within a single agent's context window.

## Why It Works

- **Constraint over context.** A compressed heuristic acts as a behavioral constraint at spawn time rather than as bulk context the model must re-read and weigh on every turn. This trades breadth for determinism — the agent reasons *as* the heuristic, not *about* it.
- **One heuristic, one skill.** Each agent carries a single $\pi$-projected axiom set, keeping the spawn prompt lean and the reasoning style legible. This mirrors **Lib2 — Fixed Location**: one concept, one canonical home.
- **Composable later, not now.** Single-heuristic agents are the Stage 1 baseline. Multi-heuristic composition (via $\oplus_{\text{ha}}$, $\oplus_{\text{bio}}$, or $\oplus_{\text{inn}}$) within one context window is the next step — but only once single-heuristic behavior is characterized.

## Relationship to Heuristic Algebra

| Stage | Mechanism | This page |
|-------|-----------|-----------|
| Stage 0 — Baseline | No scaffold | Control condition |
| **Stage 1 — Single heuristic as agent** | $\pi$(one heuristic) → system prompt | **← here** |
| Stage 2 — Composite scaffold | $\oplus_{\text{ha}}$ / $\oplus_{\text{bio}}$ of 2–3 heuristics | [Lucid Judgment](../../scaffolds/lucid-judgment/) |
| Stage 3 — Multi-heuristic in one context | Algebraic composition in-window | Future work |

## Lucid Judgment (Ingest Scaffold)

**Calibrated Confidence** — *Medium.* The mechanism (single-heuristic system-prompt injection altering reasoning style) is consistent with the [Self-Repairing Agents](../self-repairing-agents/) and [Voice-Activated Heuristic Agent](../voice-activated-heuristic-agent/) deployments already in the wiki, where named agentic heuristics demonstrably reshaped output. Confidence is held below High because no Elo-style experiment (cf. [Campaign H1](../../experiments/2026-03-23_campaign-h1-scaffold-tournament/)/[H2](../../experiments/2026-04-xx_campaign-h2-temporal-lucidity/)) has yet measured single-heuristic agents head-to-head against composite scaffolds.

**Explicit Disconfirmation Search** — The wiki's strongest counter-signal is the H1–H2 finding that *the compression mechanism determines scaffold quality* (a 231-point Elo gap between $\oplus_{\text{ha}}$ and $\oplus_{\text{bio}}$ on identical inputs). This implies that naively compressing a heuristic into a spawn prompt is not automatically performant — the projection ($\pi$) and compression choices matter. Additionally, the claim that single heuristics avoid "complex multi-prompt chaining" is untested against tasks that genuinely require cross-domain reasoning, where a single axiom set may underperform a composite.

**Proportional Evidence Summary** — Supported by: existing agentic-heuristic deployments ([self-repairing-agents](../self-repairing-agents/), [voice-activated-heuristic-agent](../voice-activated-heuristic-agent/), [heuristic-agent](../heuristic-agent/)) that already inject named heuristics into agent prompts. Weighted lower: the named heuristics *Heuristics of Metrics* and *Heuristics of AI Agents* do not yet have canonical wiki pages — these are forward references pending ingest (**Lib6** gap to close).

## Related

- [Heuristic Algebra](../../heuristic-algebra/) — operator set for the composition stages
- [Self-Repairing Agents](../self-repairing-agents/) — agentic heuristics applied to failure recovery
- [Voice-Activated Heuristic Agent](../voice-activated-heuristic-agent/) — $\pi_7$ heuristic agent spec
- [Heuristic Agent](../heuristic-agent/) — Python agent shell that hosts injected heuristics
- [Lucid Judgment](../../scaffolds/lucid-judgment/) — Stage 2 composite scaffold
- [Applications](../index/)

## Judgment

**Confidence**: Medium — mechanism is corroborated by existing deployments but not yet benchmarked against composite scaffolds.

**Known Disconfirmers**:
- Compression-mechanism sensitivity (H1–H2): a poorly projected single heuristic may underperform its source.
- Cross-domain tasks may require composition that a single-heuristic agent cannot provide.
- Forward-referenced heuristics (*Heuristics of Metrics*, *Heuristics of AI Agents*) lack canonical pages — claim rests partly on un-ingested sources.
