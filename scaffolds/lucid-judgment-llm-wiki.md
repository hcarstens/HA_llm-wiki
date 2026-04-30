---
title: "Lucid Judgment + LLM-Wiki"
parent: "Scaffolds"
---

# Lucid Judgment + LLM-Wiki

How the Lucid Judgment scaffold integrates with Karpathy's LLM-Wiki architecture to create a self-correcting knowledge engine.

## Overview

The LLM-Wiki is a Markdown-based knowledge warehouse where raw sources are ingested, organized, cross-linked, and queried. Lucid Judgment acts as the quality control layer across all three phases.

## Phase Integration

### Ingest — Calibrated Intake
1. Raw source arrives.
2. Lucid Judgment evaluates evidence strength before any page is created/updated.
3. Weak signals are flagged, contradictions with existing pages are surfaced.
4. Only proportionally justified changes are committed.

### Query — Disciplined Synthesis
1. User poses a question.
2. Relevant wiki pages are retrieved.
3. Lucid Judgment scaffold is applied before generating the response.
4. Response includes confidence, disconfirmation search, and citations.
5. Substantial responses become new wiki pages.

### Lint — Proactive Health Check
1. Scaffold sweeps the entire wiki periodically.
2. Checks: axiom proportionality, cross-link validity, confidence drift.
3. Proposes fixes, new investigations, or algebraic recombinations.

## Test Cases

_To be populated as experiments are run. See [/experiments/](../experiments/) for results._

## Related

- [Lucid Judgment](../lucid-judgment/)
- [Original Blueprint](../../ha_llm-wiki/)

## Judgment

**Confidence**: Low-Medium — This is the application document; the integration is designed but not yet empirically validated.

**Known Disconfirmers**: The overhead of running Lucid Judgment on every ingest/query may not scale well for high-volume wikis. The lint phase requires a reliable diff mechanism to detect drift.
