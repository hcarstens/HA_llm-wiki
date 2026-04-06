---
title: "Campaign H2"
parent: "Experiments"
---

# Campaign H2: Temporal Lucidity, Anticipatory Navigation & Kinetic Epistemics

**Parent campaign:** [Campaign H1](2026-03-23_campaign-h1-scaffold-tournament.md)
**Context:** H2 is the second campaign to use harmonic combination ($\oplus_{\text{ha}}$). Eight prior campaigns (R2–R8, H1) primarily used biological selection ($\oplus_{\text{bio}}$), with H1 introducing $\oplus_{\text{ha}}$ for Lucid Judgment.

## Research Question

Do Stage 3 composites (TL, AN, KE) — derived from LJ and temporal-reasoning sources — compete with or exceed Lucid Judgment and the top composites?

## Design

- **26 conditions**: 22 retained from H1 + 3 new + baseline
- **Dropped from H1**: Machine Learning (#13), Pattern Recognition (#19), Optimization (#20) — mid-tier domain heuristics
- **4 providers**: xAI/Grok-4, Anthropic/Claude Opus 4.6, OpenAI/GPT-5.4, Google/Gemini 2.5 Pro
- **3-judge panel** (xAI, Anthropic, OpenAI), Kendall's W = 0.536
- **5 strategic decision queries** (same as R2–H1)
- **180 total experiments** (160 reused from H1 + 20 new)

### New Heuristic Profiles

| Heuristic | Method | Sources | Axioms | Stage |
|-----------|--------|---------|--------|-------|
| Anticipatory Navigation (AN) | Selective ($\oplus_{\text{bio}}$) | Forecasting ⊕ FPS ⊕ Stationarity | 7 | 2 |
| Temporal Lucidity (TL) | Harmonic ($\oplus_{\text{ha}}$) | AN ⊕ LJ | 8 | 3 |
| Kinetic Epistemics (KE) | Innovative ($\oplus_{\text{inn}}$) | AN ⊕ LJ | 6 | 3 |

## Full Results

| # | Condition | Avg Elo | vs CR | New? | Derivation |
|---|-----------|---------|-------|------|------------|
| 1 | **Lucid Judgment** | **1827** | +358 | | $\oplus_{\text{ha}}$(DC, RR, SJ) |
| 2 | **Anticipatory Navigation** | **1739** | **+270** | **NEW** | $\oplus_{\text{bio}}$(F, FPS, Stat) |
| 3 | Actionable Reasoning | 1732 | +263 | | $\oplus_{\text{bio}}$(CR, DC, AR) |
| 4 | Sovereign Judgment | 1697 | +229 | | $\oplus_{\text{bio}}$(DC, RR, SJ) |
| 5 | Decisive Calibration | 1696 | +228 | | $\oplus_{\text{bio}}$(CR, MR) |
| 6 | Grounded Sovereignty | 1679 | +211 | | $\oplus_{\text{inn}}$(SV, CR) |
| 7 | Superior Judgment | 1676 | +207 | | $\oplus_{\text{bio}}$(6 sources) |
| 8 | Reflexive Reasoning | 1654 | +186 | | $\oplus_{\text{bio}}$(AR, MR, CR) |
| 9 | Epistemic Navigation | 1650 | +182 | | $\oplus_{\text{bio}}$(CR, SM, PR) |
| 10 | **Temporal Lucidity** | **1625** | **+157** | **NEW** | $\oplus_{\text{ha}}$(AN, LJ) |
| 11 | Forecasting | 1598 | +129 | | Primitive |
| 12 | Master Reasoning | 1579 | +111 | | $\oplus_{\text{bio}}$(CT, F, SM) |
| 13 | **Kinetic Epistemics** | **1521** | **+52** | **NEW** | $\oplus_{\text{inn}}$(AN, LJ) |
| 14 | Decision Making | 1492 | +23 | | Primitive |
| 15 | Calibrated Reasoning | 1468 | — | | $\oplus_{\text{bio}}$(CT, F) |
| 16 | Epistemic Courage | 1452 | −16 | | $\oplus_{\text{bio}}$(CT, SM) |
| 17 | Critical Thinking | 1419 | −49 | | Primitive |
| 18 | Scientific Method | 1414 | −55 | | Primitive |
| 19 | Probability & Stats | 1368 | −101 | | Primitive |
| 20 | Risk Management | 1363 | −105 | | Primitive |
| 21 | Elegant Reasoning | 1357 | −112 | | $\oplus_{\text{bio}}$(CR, DM) |
| 22 | Complexity | 1329 | −139 | | Primitive |
| 23 | Markets | 1243 | −226 | | Primitive |
| 24 | Strategy | 1198 | −270 | | Primitive |
| 25 | Storytelling | 1197 | −272 | | Primitive |
| 26 | *none (baseline)* | *1030* | −439 | | — |

## Key Comparisons

### AN vs. Its Parent (Forecasting)

| Condition | Rank | Avg Elo | Delta |
|-----------|------|---------|-------|
| **Anticipatory Navigation** | **#2** | **1739** | — |
| Forecasting (parent) | #11 | 1598 | −141 |

$\oplus_{\text{bio}}$ with Stationarity and FPS adds +141 over standalone Forecasting.

### Stage 3 Composites vs. Their Sources (AN + LJ)

| Condition | Rank | Avg Elo |
|-----------|------|---------|
| Lucid Judgment (source) | #1 | 1827 |
| Anticipatory Navigation (source) | #2 | 1739 |
| Temporal Lucidity ($\oplus_{\text{ha}}$ AN⊕LJ) | #10 | 1625 |
| Kinetic Epistemics ($\oplus_{\text{inn}}$ AN⊕LJ) | #13 | 1521 |

**Neither Stage 3 composite beats either source.** Combining two already-strong composites produces regression toward the mean — the opposite of H1's result.

### Method Ranking for This Source Pair

$$\oplus_{\text{bio}}(\text{AN, #2}) \gg \oplus_{\text{ha}}(\text{TL, #10}) > \oplus_{\text{inn}}(\text{KE, #13})$$

### H1 vs. H2 Comparison

| Metric | H1 | H2 |
|--------|-----|-----|
| #1 condition | LJ (1862) | LJ (1827) |
| CR rank | #9 (1625) | #15 (1468) |
| Best new entry | LJ #1 (+237 vs CR) | AN #2 (+270 vs CR) |
| Worst new entry | — | KE #13 (+52 vs CR) |
| New in top 10 | 1/1 | 2/3 |
| Kendall's W | 0.560 | 0.536 |

*Note: H2 Elo values are not directly comparable to H1 absolute values due to pool changes.*

## Key Findings

### 1. Anticipatory Navigation is the breakout result at #2
AN ($\oplus_{\text{bio}}$, 1739) places second overall — ahead of every composite except LJ. The strongest performance by a non-meta-reasoning composite. Temporal-reasoning sources (stationarity, regime detection, scenario planning) prove that **domain material CAN compete at the top**, if the domain is temporal reasoning.

### 2. Stage 3 composites show diminishing returns
Both TL (#10) and KE (#13) fall below both sources. Combining two already-refined Stage 2 composites degrades rather than improves performance. The "compounding advantage" of heuristic algebra may plateau at Stage 2.

### 3. Why LJ→TL/KE fails where DC/RR/SJ→LJ succeeded
LJ's sources (DC, RR, SJ) share deep lineage but address genuinely different functions (action calibration, self-awareness, epistemic rigor). AN and LJ come from different conceptual families — temporal reasoning and epistemic discipline — and may be **independently useful rather than synergistic**. The harmonic arrangement can't find resonant structure between unrelated families the way it can within a family.

### 4. Harmonic combination works best within families
- LJ ($\oplus_{\text{ha}}$ DC⊕RR⊕SJ, #1): sources share lineage, complementary functions → **success**
- TL ($\oplus_{\text{ha}}$ AN⊕LJ, #10): sources from different families → **regression**

For diverse sources, $\oplus_{\text{bio}}$'s aggressive culling produces tighter scaffolds.

### 5. Temporal reasoning is a viable second path
AN's #2 placement establishes temporal reasoning as a legitimate competitor to the pure epistemic path. Future architecture: **AN as temporal scaffold alongside LJ as epistemic scaffold**, rather than combining them.

### 6. LJ retains #1 with comfortable margin
LJ (1827) leads AN (1739) by +88 points. The reasoning path CT → CR → DC/RR/SJ → LJ remains the strongest scaffold lineage.

## Caveats

- Dropped conditions (ML, PR, Optimization) shift Elo scale — not directly comparable to H1
- Same 5 strategic decision queries — results may not generalize
- Kendall's W = 0.536 (moderate, slightly below H1)
- AN's strong placement may partly reflect domain-match: the 5 queries involve temporal elements (expiring grants, technology curves, lockup periods) that are AN's specialty

## Related

- [Campaign H1](2026-03-23_campaign-h1-scaffold-tournament.md) — parent campaign
- [Heuristic Algebra](../heuristic-algebra.md) — the formal system
- [Lucid Judgment](../scaffolds/lucid-judgment.md) — retains #1
- [Harmonic Layering](../operators/harmonic-layering.md) — works best within families
