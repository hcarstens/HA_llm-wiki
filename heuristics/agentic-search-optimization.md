---
title: "Agentic Search Optimization"
parent: "Heuristics"
nav_order: 50
---

# Agentic Search Optimization

> Agentic Search Optimization (ASO), also called Agentic Engine Optimization (AEO), is the practice of structuring a website so autonomous AI agents can discover, parse, evaluate, and use it efficiently.

ASO extends technical SEO into an agent-mediated web. The target is not just ranking or clicks, but machine readability, token efficiency, and actionability for systems that often fetch a page once, reason over the result, and move on.

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

## Related

- [Heuristic Algebra](../../heuristic-algebra/)
- [Heuristics](../)
- [Lucid Judgment](../../scaffolds/lucid-judgment/)
- [Agentic Search Background](../../agentic-search/)

## Judgment

**Confidence**: Medium-High — The recommendations are strongly aligned with established technical SEO, documentation IA, and current agent retrieval behavior, but the field is still moving quickly and standards remain unstable.

**Known Disconfirmers**: Future agents may rely less on lightweight static retrieval if browser-level execution becomes standard. Some high-value agent workflows may prefer direct APIs over page parsing. Project Pages deployments under a base path are less ideal than a domain-root deployment for conventional crawler discovery.