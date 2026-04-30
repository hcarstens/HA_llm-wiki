---
title: "Heuristics of Libraries"
parent: "Heuristics"
---

# Heuristics of Libraries (HLib)

A 6-axiom framework for designing, evaluating, or navigating any information retrieval system. These axioms govern how this wiki itself is organized.

## The Six Axioms

### Lib1. Collocation
Group works by the same author or subject together so a user can browse an entire topic in one place. When items are scattered, discovery depends on search rather than proximity.

### Lib2. Fixed Location
Assign every item one canonical, stable address. This makes citation, retrieval, and linking reliable. Without it, you gain flexibility but lose deterministic access.

### Lib3. Hierarchical Classification
Subdivide the collection into nested categories that allow zooming in and out. Flat structures scale poorly for browsing; deep hierarchies create cognitive overhead.

### Lib4. Controlled Vocabulary
Name subjects consistently so that synonyms and variant terms resolve to one concept. Without it, recall depends on guessing the right words or on statistical matching.

### Lib5. Citation Chaining
Every document points forward and backward to related documents. Follow references to discover by descent; follow citations to discover by ascent.

### Lib6. Single Entry Point
Provide one canonical finding tool as the gateway to everything. When no single catalog reigns, users must know which subsystem to query — power increases, discoverability drops.

## The Euclidean-to-Curved Spectrum

A traditional library applies all six axioms. Every major innovation since 1990 — folksonomies, full-text search, LLM retrieval, floating collections — systematically negates one or more axioms and accepts the resulting trade-off. Identify which axiom was dropped to instantly understand what the new system gains and what it sacrifices.

## Negation Portfolio — When to Break Each Rule

| Negation | When to Use | Example |
|----------|------------|---------|
| ¬Lib1 | Tag-based or full-text search makes physical grouping unnecessary | Folksonomies, search engines |
| ¬Lib2 | Demand-driven placement or digital access removes the need for a fixed shelf | Floating collections, streaming |
| ¬Lib3 | Graph-based or link-based navigation outperforms tree hierarchies | Wikis, citation networks |
| ¬Lib4 | Statistical relevance or LLM retrieval replaces curated subject headings | Natural language search |
| ¬Lib5 | Provenance must be obscured for security or classification | Classified systems |
| ¬Lib6 | No single tool can cover the full scope | Multi-layer discovery systems |

## Application to This Wiki

This wiki currently applies:
- **Lib1** (Collocation): Topics grouped by folder — `/heuristics/`, `/operators/`, `/scaffolds/`
- **Lib2** (Fixed Location): Each concept has one canonical `.md` file path
- **Lib3** (Hierarchical Classification): Two-level hierarchy (folder → page)
- **Lib4** (Controlled Vocabulary): Consistent naming via CLAUDE.md conventions
- **Lib5** (Citation Chaining): Cross-links in every page's `## Related` section
- **Lib6** (Single Entry Point): [Home](../../) as the dashboard

## Related

- [Evidence-Action Proportionality](../evidence-action-proportionality/)
- [Negation Check](../../operators/negation-check/)
- [Harmonic Layering](../../operators/harmonic-layering/)

## Judgment

**Confidence**: Medium-High — Axioms are well-established in library science (Ranganathan, Cutter). The negation portfolio is a novel and powerful contribution. Application to this LLM-wiki is direct but untested at scale.

**Known Disconfirmers**: The wiki is small enough that search alone could work (¬Lib1 viable). Two-level hierarchy may be too shallow as content grows (Lib3 tension). Controlled vocabulary is only as good as enforcement — drift is likely without automated linting.
