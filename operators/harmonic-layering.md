# Harmonic Layering

Compose multiple heuristics or axioms into a unified scaffold where each layer reinforces and checks the others, producing outputs stronger than any single heuristic alone.

## Mechanism

1. Select complementary axioms (e.g., Evidence-Action Proportionality + Calibrated Confidence).
2. Apply them sequentially or in parallel to the same input.
3. Resolve tensions between layers explicitly — the friction is where the value lives.

## Before/After Example

**Before (single heuristic)**: Summarize this paper → produces a confident summary with no hedging.

**After (harmonic layering)**: Summarize this paper →
- Layer 1 (Evidence-Action Proportionality): Scales claims to source strength.
- Layer 2 (Calibrated Confidence): Attaches confidence levels.
- Layer 3 (Asymmetric Disconfirmation): Notes what the paper does *not* address.
- Result: A nuanced, calibrated summary with explicit gaps identified.

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — canonical definition ($\oplus_{\text{ha}}$, Section 1a)
- [Iterative Refinement](iterative-refinement.md)
- [Negation Check](negation-check.md)
- [Evidence-Action Proportionality](../heuristics/evidence-action-proportionality.md)

## Judgment

**Confidence**: Medium-High — Empirically validated in H1 (LJ via $\oplus_{\text{ha}}$ = #1, 1862 Elo). H2 clarifies scope: $\oplus_{\text{ha}}$ works best **within families sharing lineage** (DC⊕RR⊕SJ → LJ, #1). For sources from different conceptual families (AN⊕LJ → TL, #10), $\oplus_{\text{bio}}$ outperforms.

**Known Disconfirmers**: Adding layers increases latency and token cost. H2 shows diminishing returns at Stage 3 — combining two strong Stage 2 composites via $\oplus_{\text{ha}}$ regresses toward the mean. Harmonic arrangement can't find resonant structure between unrelated families the way it can within a family. Layer conflicts can produce incoherent outputs if not managed carefully.
