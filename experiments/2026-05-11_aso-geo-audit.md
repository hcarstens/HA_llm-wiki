---
title: "ASO/GEO Audit"
parent: "Experiments"
---

# ASO/GEO Audit

**Date**: 2026-05-11  
**Scaffold Applied**: Lucid Judgment  
**Confidence**: Medium-High (80 %)

## Scope

First site-level audit of Agentic Search Optimization (ASO) and Generative Engine Optimization (GEO) coverage for the public Heuristic Algebra wiki.

## Current Strengths

1. **Canonical discovery surfaces exist.** The site already exposes a homepage, `llms.txt`, `agentic_index.json`, `robots.txt`, and `AGENTS.md`.
2. **The wiki is structurally agent-friendly.** Core content is Markdown-first, linked by section indexes, and does not depend on JavaScript for retrieval.
3. **ASO now has a canonical vocabulary page.** The heuristic page defines how this wiki distinguishes SEO, ASO/AEO, and GEO.
4. **Crawl access is permissive.** The public `robots.txt` allows general crawling and explicitly allows several AI user agents.

## Findings

### 1. Discovery Layer Is Stronger Than Average

This repo already does more than a typical documentation site for agent retrieval. The combination of `index.md`, `llms.txt`, `agentic_index.json`, and section indexes gives both humans and agents multiple low-friction entry points.

### 2. GEO Was Underrepresented Until Terminology Was Standardized

Before the May 2026 terminology update, GEO did not have a clear canonical role in the wiki. The concept was adjacent to existing ASO material but not named or positioned consistently across entry points.

### 3. The Main Remaining Gap Is Measurement, Not Documentation

The wiki can describe its ASO/GEO posture, but it cannot directly prove generative visibility from repository contents alone. There is no citation telemetry, crawl-log analysis, or external benchmarking captured in the repo yet.

### 4. Static-Site Constraints Matter

This GitHub Pages deployment is a public documentation site, not a transactional or API-heavy application. Some common ASO/GEO recommendations, especially around structured commerce actions or live instrumentation, are only partially relevant here.

## Audit Result

**Status**: Pass with follow-up actions.

The wiki now has a coherent canonical ASO/GEO concept, solid discovery surfaces, and a clean agent-readable structure. The next maturity step is recurring measurement and maintenance, not a broader rewrite of architecture.

## Recommended Actions

1. **Keep discovery files synchronized.** Update `index.md`, `llms.txt`, and `agentic_index.json` together whenever canonical pages change.
2. **Add lightweight recurring audits.** Re-run this review after meaningful changes to heuristics, scaffolds, or discovery surfaces.
3. **Add external evidence when available.** If server logs, crawl reports, or AI citation data become available, ingest them as evidence rather than inferring visibility indirectly.
4. **Front-load summaries on major pages.** This improves both agent retrieval and generative quoting without changing the overall site architecture.

## Evidence Base

- [Home](../../index/) — canonical gateway and current lint summary surface
- [Agentic Search](../../agentic-search/) — background framing for SEO, ASO/AEO, and GEO
- [Agentic Search Optimization](../../heuristics/agentic-search-optimization/) — canonical terminology and checklist
- [llms.txt](../../llms.txt) — compact agent discovery surface
- [agentic_index.json](../../agentic_index.json) — structured agent manifest
- [robots.txt](../../robots.txt) — crawl permissions
- [AGENTS.md](../../AGENTS.md) — repo-level agent guidance

## Related

- [Agentic Search Optimization](../../heuristics/agentic-search-optimization/) — canonical ASO/AEO/GEO heuristic
- [Agentic Search](../../agentic-search/) — conceptual background
- [Experiments](../) — section index for dated reports
- [Home](../../index/) — homepage lint summary and discovery hub

## Judgment

**Confidence**: Medium-High (80 %). The audit is well supported by the repo's actual discovery surfaces and page structure. Confidence is capped because visibility in generative systems cannot be directly measured from the repository alone.

**Known Disconfirmers**: A permissive discovery layer does not guarantee citation or inclusion in generative answer systems. Future agent/browser behavior may reduce the relative importance of lightweight discovery files. Some GEO recommendations are more relevant to commercial or frequently updated sites than to a compact static wiki.