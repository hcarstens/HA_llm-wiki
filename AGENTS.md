# HA LLM-Wiki Agent Guide

This repository backs a public Jekyll documentation site at https://hcarstens.github.io/HA_llm-wiki/.

## Purpose

The site documents Heuristic Algebra, Lucid Judgment, scaffold experiments, and applied agent designs.

## Canonical Entry Points

- `index.md` — canonical gateway for the published site.
- `heuristic-algebra.md` — canonical operator vocabulary and reference.
- `heuristics/` — heuristic and axiom pages.
- `operators/` — operator pages.
- `scaffolds/` — finished composite scaffolds.
- `experiments/` — evaluations and retrospectives.
- `applications/` — applied designs and implementation notes.
- `llms.txt` — agent-readable discovery index for the published site.

## Retrieval Guidance

1. Prefer Markdown source over rendered HTML when reading the repository directly.
2. Use `index.md` and section index pages before traversing leaf pages.
3. Treat `heuristic-algebra.md` as canonical for operator names and symbols.
4. Treat scaffold and experiment pages as the most authoritative summaries of comparative performance.

## Constraints

- Public read-only documentation site.
- No authenticated API or transactional workflow.
- Math is rendered with MathJax on the site; Markdown source is the cleaner machine-readable representation.
- The published site lives under the `/HA_llm-wiki` base path.