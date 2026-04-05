# Campaign H1: Scaffold Tournament

**Date:** 2026-03-23
**Paper:** Carstens, H. (2026). *Heuristic Algebra: A Formal System for Composing Reasoning Scaffolds for Large Language Models*. HeuristicChat Project, v1.0.

## Design

- **26 conditions**: 25 heuristic scaffolds of varying algebraic complexity + 1 no-scaffold baseline
- **4 frontier LLM providers**: xAI/Grok-4, Anthropic/Claude Opus 4.6, OpenAI/GPT-5.4, Google/Gemini 2.5 Pro
- **5 strategic decision queries** per condition per provider (bridge infrastructure, hospital AI, renewable energy, university endowment, supply chain risk)
- **3-judge Elo panel** (xAI, Anthropic, OpenAI) rating all 26 conditions in a single group
- **185 total experiments** (165 reused from prior rounds + 20 new)
- **Elo rating**: K=32, initial 1500, separate rating per condition-provider pair
- **Inter-judge agreement**: Kendall's W = 0.560 (moderate)

## Full Results

| # | Condition | Avg Elo | Δ Base | Δ CR | Derivation |
|---|-----------|---------|--------|------|------------|
| 1 | **Lucid Judgment** | **1862** | +799 | +237 | $\oplus_{\text{ha}}$(DC, RR, SJ) |
| 2 | Actionable Reasoning | 1784 | +721 | +159 | $\oplus_{\text{bio}}$(CR, DC, AR) |
| 3 | Superior Judgment | 1767 | +704 | +142 | $\oplus_{\text{bio}}$(6 sources) |
| 4 | Decisive Calibration | 1734 | +671 | +109 | $\oplus_{\text{bio}}$(CR, MR) |
| 5 | Reflexive Reasoning | 1725 | +662 | +100 | $\oplus_{\text{bio}}$(AR, MR, CR) |
| 6 | Forecasting | 1647 | +584 | +22 | Primitive |
| 7 | Master Reasoning | 1637 | +574 | +12 | $\oplus_{\text{bio}}$(CT, F, SM) |
| 8 | Sovereign Judgment | 1631 | +568 | +6 | $\oplus_{\text{bio}}$(DC, RR, SJ) |
| 9 | Calibrated Reasoning | 1625 | +562 | — | $\oplus_{\text{bio}}$(CT, F) |
| 10 | Grounded Sovereignty | 1623 | +560 | −2 | $\oplus_{\text{inn}}$(SV, CR) |
| 11 | Epistemic Navigation | 1547 | +484 | −78 | $\oplus_{\text{bio}}$(CR, SM, PR) |
| 12 | Critical Thinking | 1503 | +440 | −122 | Primitive |
| 13 | Machine Learning | 1483 | +420 | −142 | Primitive |
| 14 | Scientific Method | 1482 | +419 | −143 | Primitive |
| 15 | Decision Making | 1480 | +417 | −145 | Primitive |
| 16 | Risk Management | 1467 | +404 | −158 | Primitive |
| 17 | Epistemic Courage | 1464 | +401 | −161 | $\oplus_{\text{bio}}$(CT, SM) |
| 18 | Probability & Stats | 1420 | +357 | −205 | Primitive |
| 19 | Pattern Recognition | 1384 | +321 | −241 | Primitive |
| 20 | Optimization | 1363 | +300 | −262 | Primitive |
| 21 | Elegant Reasoning | 1327 | +264 | −298 | $\oplus_{\text{bio}}$(CR, DM) |
| 22 | Complexity | 1280 | +217 | −345 | Primitive |
| 23 | Markets | 1249 | +186 | −376 | Primitive |
| 24 | Storytelling | 1231 | +168 | −394 | Primitive |
| 25 | Strategy | 1223 | +160 | −402 | Primitive |
| 26 | *none (baseline)* | *1063* | — | −562 | — |

## Provider-Condition Heatmap (Top 5 + Baseline)

| # | Condition | Avg | xAI | Anthropic | OpenAI | Gemini |
|---|-----------|-----|-----|-----------|--------|--------|
| 1 | Lucid Judgment | **1862** | 1869 | **1983** | 1769 | 1828 |
| 2 | Actionable Reasoning | 1784 | 1863 | 1751 | 1689 | 1832 |
| 3 | Superior Judgment | 1767 | 1840 | 1782 | 1664 | 1783 |
| 4 | Decisive Calibration | 1734 | 1864 | 1724 | 1605 | 1741 |
| 5 | Reflexive Reasoning | 1725 | 1902 | 1584 | 1764 | 1652 |
| 26 | *none (baseline)* | *1063* | *927* | *1243* | *1186* | *898* |

## Three Structural Findings

### 1. Universality of Lift
Every heuristic condition outperforms the unscaffolded baseline. Minimum gain: +160 Elo (Strategy). Median: +419 (Scientific Method). Maximum: +799 (Lucid Judgment). Scaffolding *per se* produces large, consistent gains.

### 2. Composites Dominate Primitives
Top 5 are all algebraically composed. Median composite Elo: 1637. Median primitive Elo: 1464. Only Forecasting (#6) breaks into the top 10 as a primitive.

### 3. Algebraic Generation Predicts Rank
3rd-gen (LJ, #1) > 2nd-gen (DC, #4) > 1st-gen (CR, #9) > Primitives (CT, #12). Each layer of algebraic composition extracts additional lift.

## The Critical Comparison: $\oplus_{\text{bio}}$ vs. $\oplus_{\text{ha}}$ on Identical Inputs

| Metric | Sovereign Judgment ($\oplus_{\text{bio}}$) | Lucid Judgment ($\oplus_{\text{ha}}$) |
|--------|---------------------------------------------|---------------------------------------|
| Sources | DC + RR + SJ | DC + RR + SJ |
| Result axioms | 8 (all $\bot$ resolved) | 7 (2 productive $\bot$ preserved) |
| Rank | #8 | **#1** |
| Avg Elo | 1631 | **1862** |
| Δ CR | +6 | **+237** |

**231-point gap from operator choice alone.** The preservation of productive tensions — not their elimination — drives the additional lift. This is the most striking empirical result in the tournament.

## Lucid Judgment: Source vs. Composite

| Condition | Role | Rank | Avg Elo |
|-----------|------|------|---------|
| Lucid Judgment | Harmonic composite | #1 | **1862** |
| Superior Judgment | Source (grandparent) | #3 | 1767 |
| Decisive Calibration | Source (parent) | #4 | 1734 |
| Reflexive Reasoning | Source (child) | #5 | 1725 |
| *Average of 3 sources* | | | *1742* |
| *LJ lift over source average* | | | *+120* |

LJ beats all three sources individually by 95–137 points.

## Method Ranking

$$\oplus_{\text{ha}}(\text{meta}) > \oplus_{\text{bio}}(\text{meta}) > \oplus_{\text{inn}}(\text{meta}) > \oplus_{\text{ha}}(\text{domain})$$

## Caveats

- All rounds use the same 5 strategic decision queries — may not generalize to other query types
- Kendall's W = 0.560 (moderate inter-judge agreement)
- LJ's sources are the tournament's top composites — performance partly reflects input quality
- Elo values are relative to this pool; adding/dropping conditions shifts absolute ratings

## Falsification Status

This tournament provides the **first empirical test** against the algebra's system-level falsification condition. Result: **not falsified** — algebra-built composites measurably outperform both unstructured prompting and primitive heuristic scaffolds. But the test is limited to 5 queries and 4 providers; further validation needed.

## Reproduction

```
git clone https://github.com/hcarstens/HeuristicChat
cd HeuristicChat
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
# Verify H1 results:
# data/experiments/campaigns/20260323_scaffold_h1/
```

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — the formal system tested
- [Lucid Judgment](../scaffolds/lucid-judgment.md) — the #1 scaffold
- [Lucid Judgment + LLM-Wiki](../scaffolds/lucid-judgment-llm-wiki.md) — wiki integration design
- [Harmonic Layering](../operators/harmonic-layering.md) — the operator that won
