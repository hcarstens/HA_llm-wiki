---
title: "Agentic Search Optimization"
parent: "Heuristics"
nav_order: 50
---

# Agentic Search Optimization

> Agentic Search Optimization (ASO), also called Agentic Engine Optimization (AEO), is the practice of structuring a website so autonomous AI agents can discover, parse, evaluate, and use it efficiently.

ASO extends technical SEO into an agent-mediated web. The target is not just ranking or clicks, but machine readability, token efficiency, and actionability for systems that often fetch a page once, reason over the result, and move on.

For this wiki, ASO is the canonical umbrella term. AEO is treated as a near-synonym, while Generative Engine Optimization (GEO) is the closely related sub-problem of making pages easy for generative systems to quote, summarize, and cite accurately.

## Terminology

### SEO

- Optimizes for ranking, crawling, and human clickthrough from conventional search engines.

### ASO

- Optimizes for autonomous agents that retrieve, reason over, and sometimes act on content.
- Emphasizes discoverability, parsability, token efficiency, and capability signaling.

### AEO

- Used inconsistently across the field.
- In this wiki, treated as a synonym or near-synonym for ASO rather than a separate canon.

### GEO

- Optimizes for inclusion in generative answer layers such as AI overviews, citations, summaries, and synthesis workflows.
- Overlaps heavily with ASO but puts more weight on quotability, concise factual framing, and citation-friendly structure.

## Working Stance In This Wiki

- Keep one canonical page and one canonical path for the concept: this page.
- Use ASO as the umbrella label when talking about site architecture and agent retrieval.
- Mention GEO when the emphasis is generative citation, summarization, or answer-layer visibility.
- Avoid splitting ASO and GEO into parallel wiki concepts unless the evidence base becomes strong enough to justify separate heuristics.

## Core Principles

### 1. Discoverability

- Allow public crawling and avoid accidental robot exclusions.
- Provide an agent-readable discovery index such as `llms.txt`.
- Maintain stable URLs and clear section indexes.

### 2. Parsability

- Prefer semantic headings, lists, tables, and static content for core information.
- Avoid making essential content dependent on JavaScript execution.
- Expose structured summaries where possible.

### 3. Token Efficiency

- Put the page summary and key claims near the top.
- Keep navigation and section labels explicit.
- Split large topics into focused pages instead of burying them in long undifferentiated documents.

### 4. Capability Signaling

- Tell agents what the site contains, what is canonical, and what is not available.
- For code or documentation repositories, provide an `AGENTS.md` or equivalent operational guide.

### 5. Trust and Maintenance

- Keep pages current, linked, and internally consistent.
- Surface canonical entry points and authoritative summaries.
- Treat stale indexes as an ASO failure because agents rely heavily on first-hop navigation.

## GEO-Specific Emphasis

- Front-load concise definitions and claims so generative systems can quote the page without reconstructing its main point.
- Use explicit section names and scoped bullet lists so answer engines can lift a coherent subset instead of blending unrelated claims.
- Favor citation-friendly summaries over rhetorical openings when the page is intended to be quoted or summarized.
- Keep canonical wording stable across the homepage, indexes, and manifests to reduce ambiguity in generated answers.

## Site Checklist

- Keep `index.md`, `llms.txt`, and `agentic_index.json` aligned on canonical entry points.
- Put one-sentence summaries near the top of important pages.
- Maintain `## Related` links so agents can move laterally without guessing synonyms.
- Treat outdated inventories, broken backlinks, or stale discovery files as both an ASO and GEO failure.

## Related

- [Heuristic Algebra](../../heuristic-algebra/)
- [Heuristics](../)
- [Lucid Judgment](../../scaffolds/lucid-judgment/)
- [Agentic Search Background](../../agentic-search/)
- [ASO/GEO Audit](../../experiments/2026-05-11_aso-geo-audit/) — first site-level audit of discovery and measurement readiness

## Judgment

**Confidence**: Medium-High — The recommendations are strongly aligned with established technical SEO, documentation IA, and current agent retrieval behavior, but the field is still moving quickly and standards remain unstable.

**Known Disconfirmers**: Future agents may rely less on lightweight static retrieval if browser-level execution becomes standard. Some high-value agent workflows may prefer direct APIs over page parsing. Project Pages deployments under a base path are less ideal than a domain-root deployment for conventional crawler discovery.