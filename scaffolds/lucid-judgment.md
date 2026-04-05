# Lucid Judgment

A three-generation harmonic composite scaffold that forces disciplined reasoning by combining core axioms through algebraic operators.

## The Three Generations

### Generation 1 — Foundation
Apply each axiom independently:
- **Evidence-Action Proportionality**: Scale the response to the evidence.
- **Calibrated Confidence**: State how sure you are and why.
- **Asymmetric Disconfirmation**: Hunt for reasons you're wrong.

### Generation 2 — Composition
Combine axioms using operators:
- **Harmonic Layering**: Run all three axioms against the same input; resolve tensions.
- **Negation Check**: Invert the layered output; test if the negation holds.

### Generation 3 — Refinement
- **Iterative Refinement**: Pass the composed output through the scaffold again.
- Stabilize when successive passes produce no material changes.
- Final output includes: calibrated confidence, disconfirmation results, and proportional evidence summary.

## Prompt Template

```
Before responding, apply the Lucid Judgment scaffold:

1. [Evidence-Action Proportionality] How strong is the evidence? Scale your response accordingly.
2. [Calibrated Confidence] What is your confidence level (Low / Medium / High)? Why?
3. [Asymmetric Disconfirmation] What evidence contradicts this? Have you actively searched for it?
4. [Harmonic Layering] Do the above three layers agree? Where do they conflict?
5. [Negation Check] State the opposite of your conclusion. Is it plausible?
6. [Iterative Refinement] Re-read your answer. Does a second pass change anything material?

Include in your output:
- Calibrated confidence level with justification
- Explicit disconfirmation search results
- Proportional evidence summary
```

## Related

- [Lucid Judgment + LLM-Wiki](lucid-judgment-llm-wiki.md)
- [Harmonic Layering](../operators/harmonic-layering.md)
- [Evidence-Action Proportionality](../heuristics/evidence-action-proportionality.md)

## Judgment

**Confidence**: Medium — The scaffold is theoretically coherent and produces noticeably more disciplined outputs in informal testing. Formal Elo-style benchmarking is pending.

**Known Disconfirmers**: Token cost is ~2-3x a naive prompt. In low-stakes or time-critical contexts, the overhead may not be justified. The three-generation structure may be overkill for simple queries.
