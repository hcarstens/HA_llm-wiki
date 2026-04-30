---
title: "Calibrated Confidence"
parent: "Heuristics"
---

# Calibrated Confidence

Stated confidence levels should accurately reflect the probability of being correct. A claim made with 80% confidence should be right roughly 80% of the time.

## Core Principle

- Avoid both overconfidence and underconfidence.
- Track prediction accuracy over time to improve calibration.
- Express uncertainty explicitly rather than hiding it behind assertive language.

## Applications

- **Ingest**: Tag each wiki update with a confidence level; revisit and recalibrate during lint.
- **Query**: Responses must state confidence and the basis for that level.
- **Trading**: Map confidence to position sizing and stop-loss placement.

## Related

- [Evidence-Action Proportionality](../evidence-action-proportionality/)
- [Asymmetric Disconfirmation](../asymmetric-disconfirmation/)
- [Iterative Refinement](../../operators/iterative-refinement/)

## Judgment

**Confidence**: Medium — Calibration is well-studied in forecasting literature (Tetlock, etc.); applying it systematically to LLM-generated wiki content is experimental.

**Known Disconfirmers**: Calibration requires a sufficient sample of predictions to measure meaningfully. For one-off or novel domains, the feedback loop needed for calibration may not exist. Also, humans tend to anchor on initial confidence estimates, making recalibration harder than expected.
