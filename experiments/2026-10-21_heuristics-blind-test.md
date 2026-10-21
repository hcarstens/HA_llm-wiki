---
title: "Heuristics Blind Test (Oct 2026)"
parent: "Experiments"
---

# Heuristics Showed No Detectable Accuracy Advantage at This Sample Size in a First 12-Task Blind Test

**Analysis**

**Date**: 2026-10-21  
**Author**: Henry Carstens  
**Scaffold Applied**: Lucid Judgment  
**Confidence**: Low. 12 tasks per arm, and the test records state that a test this size can only detect large differences.

Henry Carstens's first blind test of bots with and without heuristics is now scored on accuracy only. After a desk rescore of one task, the bots given a one-line neutral prompt scored 1.7 points higher under either reading of the answer key's tolerance (B 79.2 vs A 77.5, or B 87.5 vs A 85.8). The test's README says a test with 12 tasks per arm can only detect large differences, and no significance test was run.

## The test

The test ran 12 tasks twice on the same model and tools. Arm A used each bot's current profile text, including its heuristics. Arm B got one line: "You are a helpful assistant working for Henry Carstens." Both arms received Henry's style rules. The tasks were four fact-checks, four data analyses, two graphic briefs and two article drafts. Checkers who never saw arm labels counted factual errors against answer keys (test records).

The test is scored on accuracy only: 100 minus 20 per factual error on each task, with a floor of 0 (test records). The scoring note below gives the metric's history.

## The result

The answer key for T05 gives a ±0.02 tolerance that can be read two ways: covering rho, p and q, or covering rho only. Applied the same way to both arms, the two readings give these 12-task means:

- **Reading 1 (rho, p and q):** A 77.5, B 79.2.
- **Reading 2 (rho only):** A 85.8, B 87.5.

Under either reading, B leads by 1.7 points. The test's README states that with 12 tasks per arm, the test can only detect large differences. No significance test was run, and none is claimed here. Outside T05, A scored higher on two tasks (T03, T09), B on two (T02, T08), and the other seven were tied. T05 is tied under both readings.

**Per-task accuracy, with T05 corrected: A higher on 2, B higher on 2, 8 tied (test records, 2026-10-21)**

| Task | What it asks | Errors A | Errors B | Accuracy A | Accuracy B | Higher |
|---|---|---:|---:|---:|---:|---|
| T01 | Fact-check nine claims on AI tutoring, Oregon data centers, the POWER Act and BPA | 2 | 2 | 60 | 60 | Tie |
| T02 | Fact-check the Portland health-tax note | 1 | 0 | 80 | 100 | B |
| T03 | Fact-check the Oregon unrest article | 1 | 2 | 80 | 60 | A |
| T04 | Consistency scan of 11 Oregon articles | 2.5 | 2.5 | 50 | 50 | Tie |
| T05, reading 1 | Analysis: teacher unions and school outcomes | 6 | 6 | 0 | 0 | Tie |
| T05, reading 2 | Same task, tolerance on rho only | 0 | 0 | 100 | 100 | Tie |
| T06 | Analysis: public employment and state ranks | 0 | 0 | 100 | 100 | Tie |
| T07 | Analysis: Oregon's rank on damaging protests | 0 | 0 | 100 | 100 | Tie |
| T08 | Analysis: unions and right-to-work in the Uniformly Weak states | 2 | 0 | 60 | 100 | B |
| T09 | Graphic brief: Portland's top tax rate | 0 | 1 | 100 | 80 | A |
| T10 | Graphic brief: Oregon jobs vs schools | 0 | 0 | 100 | 100 | Tie |
| T11 | Article draft: Oregon school spending | 0 | 0 | 100 | 100 | Tie |
| T12 | Revision: Oregon climate-program cost draft | 0 | 0 | 100 | 100 | Tie |
| Mean | Reading 1 / reading 2 | | | 77.5 / 85.8 | 79.2 / 87.5 | B by 1.7 |

## Scoring note (2026-10-21): metric change and T05 rescore

The metric changed twice after results were seen, and A led under both earlier metrics. The first reported result used a weighting of 50% LLM judges, 30% accuracy and 20% style. Under it, A scored 87.1 and B 85.5 (Bot's report to Henry Carstens before 10:44 AM PT, 2026-10-21; test records). At 10:44 AM PT, Henry reweighted to 50% accuracy, 30% style and 20% judges, which gave A 88.9 and B 85.6. At 11:07 AM PT, he switched to accuracy only, saying the heuristics are designed to help accuracy. The original checker counts then gave A 85.8 and B 79.2. T05 accounted for more than that difference: the original checkers applied the key's tolerance differently to identical partial p-values, recording A 100 (0 errors) and B 0 (6 errors). Scratch then rescored T05 for the desk, applying one consistent tolerance rule to both arms under each reading. That put B ahead by 1.7 under either reading, the figures above. The rescore also checked the other 11 tasks and found no numeric tolerance applied differently between arms (test records).

## For reference

LLM judge scores (Gemini and OpenAI, each run in both orders; an Anthropic judge failed to authenticate, HTTP 401, and was excluded): A 8.35, B 8.48. These are not scored (test records).

Style violations: A 3, B 4. These are not scored (test records).

## Limits

The sample is small: 12 tasks per arm. The pre-registered decision rule in the test records also requires Henry's own pick in each pair and a wall-time comparison. Henry's picks are not yet filled in, so that rule has not been applied and no arm has been declared the winner.

At 10:47 AM PT on 2026-10-21, Henry Carstens asked for the test to be rerun every 60 days. His fleet's routine, "Heuristics blind test rerun (every 60 days)," runs it next around Dec 20, 2026.

## Lucid Judgment Scaffold

### Calibrated Confidence

**Low.** The sample is 12 tasks per arm and no significance test was run. The metric changed twice after results were seen, and A led under both earlier metrics. The pre-registered decision rule has not been applied because Henry's picks are blank.

### Explicit Disconfirmation Search

- The metric changed twice after results were seen, and A led under both earlier metrics: 87.1 vs 85.5 under the first reported weighting (50% judges, 30% accuracy, 20% style), then 88.9 vs 85.6 after Henry Carstens reweighted at 10:44 AM PT (50% accuracy, 30% style, 20% judges). At 11:07 AM PT he switched to accuracy only, saying the heuristics are designed to help accuracy, and the original checker counts gave A 85.8 vs B 79.2. T05 accounted for more than that lead: the original checkers applied the key's tolerance differently to identical outputs. Once Scratch applied the tolerance the same way to both arms, A's lead reversed to B +1.7.
- After correction, B leads by 1.7 points under either reading (B 79.2 vs A 77.5, or B 87.5 vs A 85.8). The test's README states that with 12 tasks per arm the test can only detect large differences; no significance test was run.
- For reference only: judge scores were A 8.35 vs B 8.48, and style violations A 3 vs B 4.

### Proportional Evidence Summary

On accuracy, this first run shows no detectable advantage for heuristics. The corrected task-level record is 2 tasks higher for A, 2 for B and 8 tied, and the 1.7-point mean difference favors B under both readings. Neither result supports a claim for either arm.

## Sources

- Unpublished test records (Henry Carstens, 2026-10):
  - the current accuracy-only results of 2026-10-21 (v2), with the appended T05 correction;
  - the superseded v1 results of 2026-10-21 (50/30/20 composite);
  - the scoring scripts, including the v0 judge-weighted and v1 50/30/20 composite versions;
  - the test README, the task definitions, the checker score files and the T05 rescore of 2026-10-21.
- Bot's report of the first (v0) result to Henry Carstens, before 10:44 AM PT, 2026-10-21 (chat record).

## Related

- [Dynamic Heuristic Shaping](../2026-06-16_dynamic-heuristic-shaping/) — earlier heuristic-shaping experiment (June 2026)
- [Lucid Judgment](../../scaffolds/lucid-judgment/) — scaffold applied to this report
- [Heuristics as Agents](../../applications/heuristics-as-agents/) — heuristics injected as agent skills
- [Heuristics blind test, Henry Carstens wiki](https://hcarstens.github.io/wiki/research/heuristics-blind-test-2026-10/) — same analysis on hcarstens.github.io
- [Experiments](../) — section index for dated reports
- [Home](../../) — homepage gateway

## Judgment

**Confidence**: Low. On accuracy, after the T05 correction, B scored 1.7 points higher under either reading of the answer key's tolerance, and the test's README states that a test with 12 tasks per arm can only detect large differences. No significance test was run. Heuristics showed no detectable accuracy advantage in this first run.

**Known Disconfirmers**: The answer key's T05 tolerance is ambiguous, and the two readings shift both means by about 8 points. The metric changed twice after results were seen, and A led under both earlier metrics. Henry's pre-registered picks are not yet in. At 10:47 AM PT on 2026-10-21, Henry Carstens asked for the test to be rerun every 60 days. His fleet's routine, "Heuristics blind test rerun (every 60 days)," runs it next around Dec 20, 2026.

--h
