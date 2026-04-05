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

- [Iterative Refinement](iterative-refinement.md)
- [Negation Check](negation-check.md)
- [Evidence-Action Proportionality](../heuristics/evidence-action-proportionality.md)

## Judgment

**Confidence**: Medium — The composition concept is sound; optimal layer ordering and interaction effects need more experimentation.

**Known Disconfirmers**: Adding layers increases latency and token cost. Diminishing returns may set in quickly. Layer conflicts can produce incoherent outputs if not managed carefully.
