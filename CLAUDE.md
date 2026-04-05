# Heuristic Algebra LLM-Wiki

## Standing Instructions

Before any **ingest**, **query response**, or **lint** action, apply the **Lucid Judgment scaffold**. Every output must include:

1. **Calibrated Confidence** — State confidence level proportional to the strength of wiki evidence.
2. **Explicit Disconfirmation Search** — Actively hunt for contradictions or disconfirming examples already in the wiki.
3. **Proportional Evidence Summary** — Cite the wiki sources that support the claim, weighted by quality.

## Heuristic Algebra Operator Vocabulary

The canonical operator set is defined in [heuristic-algebra.md](heuristic-algebra.md). When referencing operators in any wiki page, use the standard symbols:

| Symbol | Name | Quick Reference |
|--------|------|-----------------|
| $\oplus$ | Combination (Union) | Unionize all axioms from two fields |
| $\oplus_{\text{bio}}$ | Biological Selection | Lean — cull unfit, resolve all $\bot$ |
| $\oplus_{\text{ha}}$ | Harmonic Arrangement | Rich — compose voices, preserve productive $\bot$ |
| $\oplus_{\text{inn}}$ | Innovative Recombination | Novel — generate emergent axioms |
| $\neg$ | Negation | Replace one axiom with its logical complement |
| $\sim$ | Similarity | Shared structural function across fields |
| $\leftrightarrow$ | Resonance | Mutual amplification — synergy |
| $\bot$ | Contradiction | Destructive (must resolve) or productive (may preserve) |
| $\pi$ | Projection | Principled subset selection (5–8 axioms typical) |
| $\delta$ | Decompression | Un-scope harmonic sacrifices for new context |
| $\uparrow$ | Update | Bayesian credence update from evidence |

## Project Structure

```
index.md            — Mission control dashboard
/heuristics/        — One page per axiom (confidence rating + known disconfirmers)
/operators/         — One page per algebraic operator (with before/after examples)
/scaffolds/         — Finished composite scaffolds (e.g., Lucid Judgment)
/experiments/       — Timestamped Elo-style tests of wiki performance
/applications/      — Real outputs: trading frameworks, research syntheses, decision tools
```

## Workflow

- **Ingest**: Run Lucid Judgment before creating/updating any page. Flag weak signals, check for contradictions, reject or tag unbalanced evidence.
- **Query**: Search wiki, read relevant pages, apply Lucid Judgment, then respond. Answers become new wiki pages when substantial.
- **Lint**: Periodic audit — check axiom proportionality, cross-link validity, confidence drift. Propose fixes and new investigations.

## Organization — Heuristics of Libraries (HLib)

This wiki is maintained according to six library-science axioms. Apply them when creating, moving, or linking any page.

1. **Lib1 — Collocation**: Group related content by folder (`/heuristics/`, `/operators/`, `/scaffolds/`, etc.). Never scatter a topic across unrelated folders.
2. **Lib2 — Fixed Location**: Every concept gets one canonical `.md` file path. Do not duplicate content across files. Link, don't copy.
3. **Lib3 — Hierarchical Classification**: Use the two-level hierarchy (folder → page). Add subfolders only when a folder exceeds ~15 pages.
4. **Lib4 — Controlled Vocabulary**: Use consistent naming. Filenames are `lowercase-kebab-case.md`. Refer to axioms and operators by their canonical names as defined in their wiki pages.
5. **Lib5 — Citation Chaining**: Every page must have a `## Related` section with forward and backward links. When adding a page, update related pages to link back.
6. **Lib6 — Single Entry Point**: `index.md` is the canonical gateway. Every new page must be registered in the appropriate table in `index.md`.

Full reference: [heuristics/libraries.md](heuristics/libraries.md)

## Conventions

- All content in Markdown.
- Each heuristic/operator page ends with a `## Judgment` section: current confidence rating + known disconfirmers.
- Cross-link liberally between related pages using relative paths.
- Experiments use timestamped filenames: `YYYY-MM-DD_description.md`.
