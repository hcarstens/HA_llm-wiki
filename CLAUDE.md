# Heuristic Algebra LLM-Wiki

## Standing Instructions

Before any **ingest**, **query response**, or **lint** action, apply the **Lucid Judgment scaffold**. Every output must include:

1. **Calibrated Confidence** — State confidence level proportional to the strength of wiki evidence.
2. **Explicit Disconfirmation Search** — Actively hunt for contradictions or disconfirming examples already in the wiki.
3. **Proportional Evidence Summary** — Cite the wiki sources that support the claim, weighted by quality.

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

## Conventions

- All content in Markdown.
- Each heuristic/operator page ends with a `## Judgment` section: current confidence rating + known disconfirmers.
- Cross-link liberally between related pages using relative paths.
- Experiments use timestamped filenames: `YYYY-MM-DD_description.md`.
