---
title: "Dynamic Heuristic Shaping"
parent: "Experiments"
---

# Dynamic Heuristic Shaping Improves Qualitative Research Synthesis

**Date**: 2026-06-16  
**Author**: Henry Carstens  
**Scaffold Applied**: Lucid Judgment  
**Confidence**: Medium-High (75 %)  
**Source paper**: [dynamic_heuristics_experiment.tex](../assets/papers/dynamic_heuristics_experiment.tex)

## Abstract

This experiment evaluates whether **heuristic shaping** improves the quality of research-agent syntheses. Eleven research-agent configurations were run under three conditions — a deterministic control, deterministic heuristic shaping, and heuristic shaping with LLM-assisted extraction. Outputs were judged blindly by a multi-model LLM panel using a fixed research-quality rubric. Heuristic shaping beat the control on **10 of 11** questions. The LLM-assisted heuristic condition ranked first on **8 of 11** questions and reached a global Elo of **1725.3**, versus **1541.5** for deterministic heuristic shaping and **1233.2** for control.

## Research Question

Does Phase F heuristic shaping — with and without F7 LLM-assisted extraction — produce better qualitative research syntheses than the deterministic control path?

The evaluated configs are landscape and architecture syntheses, **not** resolved binary forecasts. Brier scoring remains the preferred method for resolved forecast backtests; this experiment instead measures judged synthesis quality: fit to the question, evidence structure, falsifiability, and decision usefulness. See the [Forecasting Scaffold](../scaffolds/forecasting-scaffold/) for the separate quantitative-prediction path.

## Experimental Design

### Conditions

Each config was run under three conditions using the same source set, fixed clock, and schedule configuration.

| Condition | Heuristic researcher | LLM extraction |
|-----------|----------------------|----------------|
| `control` | off | disabled |
| `heuristic` | shaping | disabled |
| `heuristic_llm` | shaping | enabled (provider fallback) |

The LLM fallback order was xAI, Gemini, Codex, then Anthropic. The judged artifact for every run was `domain_writer/summary.md`.

### Blind Judge Panel

Judges (xAI, Gemini, Codex, Anthropic) received anonymized summaries and returned a ranking (`RANKING: A, B, C`). Consensus rankings were computed by **Borda count**; inter-judge agreement by **Kendall's W**; global condition strength by **sequential Elo** (K=32, initial 1500). Two to three judges succeeded per question (mean ≈ 2.5 of 4).

## Results

### Per-Question Outcomes

Heuristic shaping beat control on **10 of 11** questions. The only control win was `llm_time_series_baseline`, where the control path used a specialized financial time-series baseline writer.

| Schedule | Consensus ranking | W | Panel | Verdict |
|----------|-------------------|---|-------|---------|
| `daily_financial_synthetic_fiij` | heuristic_llm > heuristic > control | 0.75 | 2 | heuristic beats control |
| `eeg_decryption_financial_ts` | heuristic > heuristic_llm > control | 0.44 | 3 | heuristic beats control |
| `ha_social_medium_frequency_trading` | heuristic_llm > heuristic > control | 1.00 | 3 | heuristic beats control |
| `kalman_filter_optimality` | heuristic_llm > heuristic > control | 0.11 | 3 | heuristic beats control |
| `llm_near_frontier_ml_clustering` | heuristic_llm > heuristic > control | 0.75 | 2 | heuristic beats control |
| `llm_time_series_baseline` | control > heuristic > heuristic_llm | 0.44 | 3 | **control wins** |
| `multiuser_backtest_scaffolding` | heuristic_llm > heuristic > control | 1.00 | 3 | heuristic beats control |
| `social_media_stationarity_stocks` | heuristic > heuristic_llm > control | 0.75 | 2 | heuristic beats control |
| `social_stock_data_feeds` | heuristic_llm > heuristic > control | 1.00 | 3 | heuristic beats control |
| `synthetic_data_fiij_football` | heuristic_llm > heuristic > control | 0.78 | 3 | heuristic beats control |
| `time_series_forecasting_state` | heuristic_llm > heuristic > control | 1.00 | 2 | heuristic beats control |

### Aggregate Elo

| Condition | Elo | W-L | Matches | Δ vs control |
|-----------|-----|-----|---------|--------------|
| `heuristic_llm` | **1725.3** | 62-18 | 80 | **+492.1** |
| `heuristic` | 1541.5 | 48-32 | 80 | +308.3 |
| `control` | 1233.2 | 10-70 | 80 | baseline |

Mean Elo across the three conditions is 1500.0 by construction.

### Summary Statistics

| Metric | Value |
|--------|-------|
| Questions judged | 11 |
| Heuristic beats control | **10 / 11** |
| `heuristic_llm` ranked first | **8 / 11** |
| `heuristic` ranked first | 2 / 11 |
| `control` ranked first | 1 / 11 |
| Mean Kendall's W | 0.73 |
| Elo spread (heuristic_llm − control) | +492.1 |

## Lucid Judgment Scaffold

### Calibrated Confidence

**Medium-High (75 %).** The Elo separation is large (+492 points between best and control) and consistent across most of the suite. Confidence is capped below the headline result because the panel was partial, the suite is small and internally generated, and judge agreement was uneven.

### Explicit Disconfirmation Search

- **The `llm_time_series_baseline` exception is a genuine disconfirmer** for the universal claim. A specialized financial time-series baseline template beat generic heuristic shaping. Generic shaping should **not** replace dedicated domain paths without further testing.
- **Low judge agreement on some questions.** Mean Kendall's W = 0.73, but `kalman_filter_optimality` had W=0.11, and the EEG and LLM-baseline questions had W=0.44. Conclusions for low-agreement questions are provisional.
- **Partial panel.** Gemini frequently failed to emit a parseable `RANKING:` line and Anthropic returned auth errors on some calls — mean successful panel ≈ 2.5 of 4 judges. Fixing judge infrastructure and re-running is required to estimate Elo stability.
- **No realized accuracy.** This measures *judged synthesis quality*, not forecast accuracy. It is a qualitative benchmark, not a calibration result — Brier-scored backtests remain the evidence tier for predictive claims.

### Proportional Evidence Summary

The strongest evidence is the deterministic `heuristic` condition's 1541.5 Elo and 48-32 record: the benefit is **not** solely from adding LLM calls — the shaping layer provides useful structure even with deterministic extraction. The `heuristic_llm` gain (+184 Elo over deterministic shaping) is real but rests on a smaller, partially-judged panel and should be weighted accordingly.

## Recommendations

1. Use `heuristic_researcher: shaping` with LLM extraction as the default for **non-financial** qualitative research syntheses.
2. Preserve specialized templates where they encode domain structure — especially the financial time-series LLM baseline path.
3. Keep Brier-scored forecast backtests as the evidence tier for predictive-accuracy claims ([Forecasting Scaffold](../scaffolds/forecasting-scaffold/)).
4. Fix judge-infrastructure failures and re-run to estimate Elo stability.
5. Inspect low-agreement questions individually before promoting their results as strong evidence.

## Reproducibility

| Item | Path |
|------|------|
| Suite report | `runs/research/qualitative/20260616/suite_report.json` |
| Elo ratings | `runs/research/qualitative/20260616/elo_ratings.json` |
| Elo implementation | `forecasting/research_agent/elo.py` |
| Judge panel | `forecasting/research_agent/judge_panel.py` |
| Suite runner | `forecasting/research_agent/evaluate_qualitative.py` |

```
python -m forecasting.research_agent.evaluate_qualitative --suite \
  --suite-output runs/research/qualitative/20260616
```

## Related

- [Forecasting Scaffold](../scaffolds/forecasting-scaffold/) — separate quantitative path; Brier-scored, kept distinct from this qualitative benchmark
- [Lucid Judgment](../scaffolds/lucid-judgment/) — scaffold applied to this report
- [Heuristics as Agents](../applications/heuristics-as-agents/) — heuristics injected as agent skills; shaping is the agentic analogue
- [Update](../heuristic-algebra/) ($\uparrow$) — the Bayesian credence update this experiment supplies
- [Experiments](../) — section index for dated reports
- [Home](../index/) — homepage gateway

## Judgment

**Confidence**: Medium-High (75 %). Heuristic shaping clearly improved qualitative synthesis across this suite, with a large and internally consistent Elo separation. Confidence is held below the raw win rate because of the partial judge panel, small internally-generated suite, and uneven inter-judge agreement.

**Known Disconfirmers**: A specialized domain template (financial time-series baseline) beat generic shaping on one question — shaping is not a universal replacement for dedicated paths. Results do not transfer to forecast accuracy; only judged synthesis quality is measured here. Low-agreement questions (Kalman, EEG, LLM-baseline) may not replicate with a fuller panel.
