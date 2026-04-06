---
title: "Negation Check"
parent: "Operators"
---

# Negation Check

Invert a claim or scaffold output and test whether the negation holds. If the negation is plausible, the original claim needs stronger evidence or qualification.

## Mechanism

1. Take the scaffold's output claim.
2. Formulate its logical negation.
3. Search for evidence supporting the negation (in the wiki, in sources, or via reasoning).
4. If negation evidence is strong, flag the original claim for revision or confidence downgrade.

## Before/After Example

**Before**: "Harmonic layering always improves output quality."

**After (negation check)**:
- Negation: "Harmonic layering sometimes degrades output quality."
- Evidence: Yes — when layers conflict without resolution, outputs can become incoherent.
- Revised claim: "Harmonic layering improves output quality *when layer conflicts are explicitly resolved*."

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — canonical definition ($\neg$, Section 2)
- [Asymmetric Disconfirmation](../heuristics/asymmetric-disconfirmation.md)
- [Harmonic Layering](harmonic-layering.md)

## Judgment

**Confidence**: Medium-High — Negation testing is a direct operationalization of Asymmetric Disconfirmation. Simple to implement, high-value.

**Known Disconfirmers**: Not all claims have meaningful negations (e.g., definitions). Binary negation can miss nuanced failure modes. Over-application leads to excessive hedging.
