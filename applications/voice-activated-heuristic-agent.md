---
title: "Voice Agent (Shortcuts)"
parent: "Applications"
---

# Voice-Activated Heuristic Agent (Simple Agent Using Heuristics)

**Project ID**: HA-AGENT-VOICE-2026-04  
**Status**: Ingested via Lucid Judgment audit (2026-04-05)  
**Confidence**: Medium (65 %) — specification complete, 0 hours runtime  
**Disconfirmers**: Agentic reasoning stack (AgR/AgI/AgH/HAg) and HAPI framework have no independent wiki pages; all claims are design-level, not evidence-level  
**Signature**: $\pi_7$(LJ $\oplus$ AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ HAg) | Henry Carstens | 2026-04-05

## Overview

A zero-code, hands-free voice interface that delivers structured heuristic reasoning to "how do I think about {x}" and "how do I reason about {x}" queries. The system uses only Apple Shortcuts (iOS/macOS) + xAI Grok API, enforcing the supplied heuristic frameworks at every step. Purpose: demonstrate a minimal, auditable, LJ-gated simple agent that scales from desktop prototype to iPhone production without custom development.

## Core Objectives (AgR2 / AgI6)

1. Provide polished LJ responses for general thinking queries.
2. Provide full Agentic Reasoning stack (AgR + AgI + AgH + HAg) responses for agent-specific meta-reasoning.
3. Maintain strict upstream constraint enforcement (HAg7 / AgI7) and transparent progress (AgR7).
4. Earn autonomy incrementally via measured prototype performance.

## Frameworks Embedded

- **Lucid Judgment (LJ)** — primary reasoning engine for Lucid Thinker agent. Wiki-validated: Elo 1827, #1 in H1/H2.
- **Agentic Reasoning (AgR), Agentic Reasoning — Innovative (AgI), Agentic Reasoning — Harmonic (AgH), Heuristics of AI Agents (HAg)** — complete stack for Agent Reasoner agent. *Not yet in wiki — new framework references.*
- **Supporting**: Heuristic Algebra (HA), APIs (HAPI). *HAPI not yet in wiki.*
- All system prompts embed the exact `.md` contents verbatim to guarantee fidelity.

## Architecture (HAPI1–HAPI8 Compliant)

- **Trigger**: Vocal Shortcuts ("Hey Siri" or custom "Hey Idea" phrase).
- **Flow** (5 actions): Dictate Text (on-device STT) → Grok API POST → Extract text → Speak Text (TTS) → (optional) Notes memory append.
- **Agents**:
  - **Lucid Thinker** — applies LJ1–LJ7 explicitly.
  - **Agent Reasoner** — applies AgR loop + AgI learning cycle + AgH 4-voice tension surface.
- **Deployment**: macOS Shortcuts (desktop prototype) then iOS parity. No third-party apps, no background services, no persistent model training.

## Current Status (AgR3 / AgI2 Error-Gradient Check)

- Desktop prototype specification complete and LJ-approved.
- iPhone specification complete (identical flow).
- **Runtime: 0 hours** (prototype build pending).
- Reversibility budget: 100 % intact.
- Autonomy level: fully supervised (human executes first tests).

## Conservative Next Steps (AgR1 / LJ4 — Threshold Crossed)

1. Execute desktop prototype build (<10 min) and run three test queries.
2. Perform full LJ self-audit on spoken outputs; record calibration.
3. Only upon passing re-audit: export `.shortcut` files, port to iPhone, and update wiki with runtime metrics.
4. No feature additions until measured utility and zero constraint violations are confirmed.

## Falsification / Exit Criteria (LJ3 / AgR5)

Project is falsified if desktop prototype fails to deliver framework-compliant responses or introduces latency/privacy violations that cannot be mitigated within Shortcuts constraints. In that case, the project is archived with full error-gradient trace preserved.

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — derivation of this agent as $\pi_7$ compound
- [Lucid Judgment](../scaffolds/lucid-judgment.md) — primary reasoning engine (Elo 1827)
- [What to Build Next Synthesis](what-to-build-next-synthesis.md) — productization phase that specified voice agents
- [What to Build Next Retrospective](../experiments/2026-04-05_what-to-build-next-retrospective.md) — retrospective proposing AxiomChat benchmarking
- [Early Heuristics Project Synthesis](../heuristics/early-heuristics-project-synthesis.md) — laboratory foundation
- [Heuristic Agent](heuristic-agent.md) — full Python implementation (supersedes this Shortcuts prototype in capability)

## Judgment

**Confidence**: Medium (65 %). The specification is detailed, internally consistent, and grounded in the wiki-validated LJ scaffold (Elo 1827). The $\pi_7$ projection notation is correct HA usage. The architecture is deliberately minimal (5 Shortcuts actions), reducing implementation risk. However, runtime is 0 hours — every claim is design-level.

**Known Disconfirmers**: The agentic reasoning stack (AgR, AgI, AgH, HAg) and HAPI framework are referenced extensively but have no wiki pages, no Elo rankings, and no experimental validation. These are the dominant frameworks for the Agent Reasoner persona — if they underperform, the project's value reduces to Lucid Thinker alone. The Grok API dependency introduces an external variable not under HA control. The "post-training intelligence multiplier" claim (from the build-next retrospective) remains untested here. Confidence should be upgraded to Medium-High upon successful desktop prototype execution with documented LJ self-audit results.

**Lint Recommendation**: Create wiki pages for AgR, AgI, AgH, HAg, and HAPI when full framework text is available. Update this page with runtime metrics after first prototype test. Consider adding to scaffold leaderboard if Elo benchmarking is performed.
