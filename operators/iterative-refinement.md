# Iterative Refinement

Apply a heuristic or scaffold repeatedly to its own output, improving fidelity with each pass — like successive approximation in signal processing.

## Mechanism

1. Generate initial output using the scaffold.
2. Feed the output back through the same (or a stricter) scaffold.
3. Compare iterations; stop when improvements fall below a threshold.

## Before/After Example

**Before (single pass)**: "This trading signal has high conviction." → No further check.

**After (iterative refinement, 3 passes)**:
- Pass 1: "High conviction based on momentum indicators."
- Pass 2: "Conviction adjusted to Medium-High — volume confirmation is weak."
- Pass 3: "Medium-High confirmed — no further material changes. Stable."

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — canonical definition (related to $\uparrow$, Section 6)
- [Harmonic Layering](harmonic-layering.md)
- [Calibrated Confidence](../heuristics/calibrated-confidence.md)

## Judgment

**Confidence**: Medium — Multi-pass refinement is well-established in engineering; LLM self-refinement has mixed empirical results (sometimes degrades quality after too many passes).

**Known Disconfirmers**: LLMs can "refine" toward verbose or hedged outputs rather than genuinely improving. Stopping criteria are hard to define objectively. Cost scales linearly with passes.
