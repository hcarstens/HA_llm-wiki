# Heuristic Algebra ($\mathbb{H}$)

**HA Signature:** Henry Carstens — π∘(LJ ⊕ INF ⊕ SDG) | described in ℍ, by ℍ | 2026-03

> The seminal operating document for Heuristic Algebra. This page is the canonical reference for all operators, constraints, and falsification conditions.
>
> **Empirically validated across 10 campaigns (R2–H2).** H1: 26 conditions × 4 frontier LLMs. Every scaffold outperforms baseline (+160 to +799 Elo). The operator matters: same inputs via $\oplus_{\text{bio}}$ → #8 vs. $\oplus_{\text{ha}}$ → #1 (231-point gap). H2: Stage 3 composites show diminishing returns — $\oplus_{\text{ha}}$ works best within families sharing lineage; for diverse sources, $\oplus_{\text{bio}}$ produces tighter scaffolds. See [H1](experiments/2026-03-23_campaign-h1-scaffold-tournament.md) and [H2](experiments/2026-04-xx_campaign-h2-temporal-lucidity.md) results.

The set of all fundamental heuristics (Axioms) for a given topic $T$ is denoted as $\mathbf{H}_{T} = \{h_1, h_2, h_3, \dots, h_n\}$.

---

## 1. The Combination Operator ($\oplus$) — Field Union

Defines a new, broader field of study by **unionizing** the heuristic sets of two existing fields.

**Definition:** Given two fields, $T_A$ with heuristics $\mathbf{H}_A$ and $T_B$ with heuristics $\mathbf{H}_B$, the combination $T_C = T_A \oplus T_B$ is a new field whose structure is governed by the union of their heuristic sets.

$$\mathbf{H}_{A \oplus B} = \mathbf{H}_A \cup \mathbf{H}_B$$

**Constraints:**
- $\oplus$ produces the **complete union** — every axiom from both source sets is present. No axioms are dropped during combination.
- Downstream selection from the union is handled by the **Projection operator** ($\pi$).
- **Contradiction handling:** When combined axiom sets contain incompatible claims ($h_j = \neg h_i$), both axioms remain and an explicit **contradiction marker** $\bot(h_i, h_j)$ is generated. Contradictions are classified as either **destructive** (must be resolved) or **productive** (tension generates insight — may be preserved).

### 1a. Typed Combination Operators

The classical $\oplus$ (blind union) is the **identity combiner**. Three typed variants apply domain-specific compression during combination. Combination is **operator-dependent**: $\oplus_{\text{bio}}(A, B) \neq \oplus_{\text{ha}}(A, B) \neq \oplus_{\text{inn}}(A, B)$.

| Operator | Name | Compression Mechanism | Output Character | Best For |
|---|---|---|---|---|
| $\oplus$ | Classical Union | None — all axioms survive | Complete but noisy | Raw material, exploration |
| $\oplus_{\text{bio}}$ | Biological Selection | Cull the unfit, keep conserved genes, resolve all $\bot$ | Lean, fit, stable equilibrium | Decision tools — answering questions |
| $\oplus_{\text{ha}}$ | Harmonic Arrangement | Compose independent voices, preserve productive $\bot$, scope dominant axioms | Rich, arranged, dynamic equilibrium | Thinking tools — generating questions |
| $\oplus_{\text{inn}}$ | Innovative Recombination | Generate novel axioms, apply creative lenses, then prune | Novel, emergent, surprising | Discovery tools — finding what no source contains |

**Key properties:**
- **Non-commutativity:** The typed operators produce different outputs from the same inputs. The choice of operator is itself a strategic decision.
- Each typed operator incorporates its own internal projection logic.
- **Convergence:** $\oplus_{\text{bio}}$ is **convergent** (culls toward minimum viable set). $\oplus_{\text{ha}}$ is **accretive** (adds structured richness; tensions from layer $N$ become engines for layer $N+1$). $\oplus_{\text{inn}}$ is **divergent** (generates novelty).
- **Relation mapping prerequisite:** Before choosing a typed operator, map all three inter-axiom relations ($\sim$, $\bot$, $\leftrightarrow$) across the axiom pool. Many $\sim$ → $\oplus_{\text{bio}}$. Many $\leftrightarrow$ → $\oplus_{\text{ha}}$. Many gaps → $\oplus_{\text{inn}}$.

---

## 2. The Transformation Operator ($\neg$) — Field Negation/Creation

Defines a new field by **negating** a specific core heuristic, analogous to negating Euclid's Parallel Postulate to create non-Euclidean geometry.

$$\mathbf{H}_{T'} = (\mathbf{H}_T \setminus \{h_k\}) \cup \{\neg h_k\}$$

**Example:** $\neg$(Rationality) in Economics → Bounded Rationality / Cognitive Bias → **Behavioral Economics**.

**Constraints:**
- $\neg$ is **deterministic**: given the same axiom in the same domain context, $\neg h_k$ must produce the same complement.
- $\neg$ produces **exactly one output**, not a family of alternatives. If multiple incompatible complements exist, the axiom lacks sufficient precision — refine the axiom first.
- **Dependency check (CR8):** Before negating $h_k$, audit whether other axioms depend on it. Cascade damage must be surfaced, not hidden.

---

## 3. The Similarity Operator ($\sim$) — Structural Analogy

Identifies shared function between axioms across different fields, enabling knowledge transfer.

$$h_A \sim h_B \iff \text{Function}(h_A) = \text{Function}(h_B)$$

**Example:** Homeostasis $\sim$ Equilibrium. Both provide "active regulation to maintain stable state."

**Constraints:**
- $\sim$ is **symmetric** but **not transitive**.
- The structural function must be **explicitly named**, not merely asserted.
- Similarity is **graded**, not binary — the falsification test is whether the transfer is actionable.

---

## 3a. The Resonance Operator ($\leftrightarrow$) — Mutual Amplification

Identifies pairs of axioms that **amplify each other** — synergy, not redundancy. Distinct from similarity ($\sim$, shared function) and contradiction ($\bot$, conflict).

$$h_A \leftrightarrow h_B \iff \text{Power}(h_A \mid h_B) > \text{Power}(h_A) \;\wedge\; \text{Power}(h_B \mid h_A) > \text{Power}(h_B)$$

**Distinction from $\sim$:** Similarity says "these serve the same function" → candidates for compression (cull one). Resonance says "these amplify each other" → candidates for composition (keep both).

**Example:** Inv2 (Margin of Safety) $\leftrightarrow$ RM5 (Tail Risk Hedging): Two-layer defense — estimation errors + extreme events. Neither alone is as powerful as both in concert.

**Constraints:**
- **Symmetric**, **not transitive**.
- Amplification mechanism must be **explicitly named**.
- **Context-dependent** — two axioms may resonate in one combined field and not in another.

**The four inter-axiom relations:** Every axiom pair stands in one of: $\sim$ (compress), $\bot$ (resolve or preserve), $\leftrightarrow$ (compose), or **independent** (evaluate individually).

---

## 4. The Projection Operator ($\pi$) — Subset Selection

Selects a principled subset of axioms from a combined field to construct a persona, mental model, or applied framework.

$$\pi_k(\mathbf{H}_C) = \{h_{i_1}, h_{i_2}, \dots, h_{i_k}\} \subset \mathbf{H}_C \quad \text{where } k \leq |\mathbf{H}_C|$$

**Selection Criteria (all must be satisfied):**
1. **Source Coverage:** At least one axiom from each source field.
2. **Negation Inclusion:** At least one negated axiom ($\neg h_k$).
3. **Contradiction Resolution:** No unresolved $\bot$ markers between selected axioms.
4. **Functional Completeness:** Subset must resolve at least one non-trivial decision.
5. **Precondition Transparency (CR8):** For every culled axiom, audit whether any survivor depends on it. Surface hidden dependencies.

**Constraints:**
- $\pi$ is **not unique** — multiple valid projections can exist. This is by design.
- Size $k$ is typically 5–8 for personas and mental models.
- $\pi$ operates on the output of $\oplus$ — cannot be applied to a single uncombined field.

---

## 5. The Decompress Operator ($\delta$) — Reversible Expansion

Expands a harmonic compound by **un-scoping sacrificed axioms** when the context shifts. Only applicable to compounds produced by $\oplus_{\text{ha}}$, which documents its sacrifices.

$$\delta(\mathbf{H}_C, \text{ctx}) = \mathbf{H}_C \cup \{h_i^{\text{widened}} \mid h_i \in S, \text{ctx requires wider scope}\} \cup \{h_j \mid h_j \in V, \text{ctx requires this voice}\}$$

**Key advantage of $\oplus_{\text{ha}}$:** Lossless compression with reversible scoping. $\oplus_{\text{bio}}$ and $\oplus_{\text{inn}}$ compounds cannot be decompressed — culled axioms are removed, not scoped.

---

## 6. The Update Operator ($\uparrow$) — Evidence-Driven Learning

Modifies a compound's axiom credences in response to evidence. The only operator that enables a compound to **learn**.

$$p_i' = \frac{p(e \mid h_i \text{ load-bearing}) \cdot p_i}{p(e \mid h_i \text{ load-bearing}) \cdot p_i + p(e \mid h_i \text{ not load-bearing}) \cdot (1 - p_i)}$$

Each axiom updates against its own complement independently. Multiple axioms can simultaneously be load-bearing.

**Credence annotations:** Every axiom can carry $p_i \in (0, 1]$. Default $p_i = 1$ when no evidence exists. Credences are properties of the *application*, not of the axiom itself.

**Interaction with typed combiners:**
- $\oplus_{\text{bio}}$ compound with $\uparrow$ can *regrow* culled axioms.
- $\oplus_{\text{ha}}$ compound with $\uparrow$ can *rebalance* voices.

**Constraints:**
- $\uparrow$ is **path-dependent**: different evidence sequences produce different distributions.
- Evidence must be **operationalizable** — measurable outcomes, not subjective impressions.
- **Convergence caveat:** Theoretical convergence requires correctly specified likelihoods and sufficient data. For most HA applications, the prior will dominate.

---

## Operator Summary (v0.5)

| Operator | Symbol | Purpose |
|:---|:---|:---|
| Combination (Union) | $\oplus$ | Broader interdisciplinary field by unionizing all axioms |
| Biological Selection | $\oplus_{\text{bio}}$ | Lean — culls unfit, keeps conserved, resolves all contradictions |
| Harmonic Arrangement | $\oplus_{\text{ha}}$ | Rich — composes voices, preserves productive tensions |
| Innovative Recombination | $\oplus_{\text{inn}}$ | Novel — generates emergent axioms via creative lenses |
| Transformation (Negation) | $\neg$ | New sub-field by replacing one assumption with its complement |
| Similarity (Structural Analogy) | $\sim$ | Shared function across fields → knowledge transfer |
| Resonance (Mutual Amplification) | $\leftrightarrow$ | Axiom pairs that amplify each other — synergy |
| Contradiction (Tension) | $\bot$ | Marks incompatible axioms: destructive or productive |
| Projection (Subset Selection) | $\pi$ | Principled subset for persona, model, or framework |
| Decompression (Reversible Expansion) | $\delta$ | Un-scope harmonic sacrifices when context shifts |
| Update (Evidence-Driven Learning) | $\uparrow$ | Bayesian credence update after observing evidence |

Full operator set: $\{\oplus, \oplus_{\text{bio}}, \oplus_{\text{ha}}, \oplus_{\text{inn}}, \neg, \sim, \leftrightarrow, \bot, \pi, \delta, \uparrow\}$

---

## Falsification Conditions

The algebra applies Sc2 (falsifiability) to itself. Each operator specifies the observations that would render it useless.

| Operator | Falsified If |
|:---|:---|
| $\oplus$ | Combinations produce no cross-domain insights vs. informal reasoning |
| $\neg$ | Practitioners produce incompatible complements from the same axiom + context |
| $\sim$ | Analogies generate no actionable knowledge transfers |
| $\leftrightarrow$ | Resonance-composed pairs show no additional power vs. individual axioms |
| $\pi$ | Criteria-satisfying projections are no better than random axiom subsets |
| $\oplus_{\text{bio/ha/inn}}$ | Typed operators produce indistinguishable outputs (>70% overlap) |
| $\delta$ | Decompression is no more useful than re-running the combiner from scratch |
| $\uparrow$ | Updated compounds perform no better than static ones |
| CR8 | Dependency audits find no hidden dependencies across 10+ projections |

**System-level:** The algebra as a whole is falsified if algebra-built personas/models are no more useful than those built by unstructured expert description.

**Provisional status (v0.5):** Productive enough to generate 10 mental models, 9 personas, and 8+ compound heuristics from 30+ source heuristics. The falsification conditions are the algebra's commitment to intellectual humility. If any condition is met, the response is to revise, not defend.

---

## Related

- [Lucid Judgment](scaffolds/lucid-judgment.md) — scaffold built from HA operators
- [Harmonic Layering](operators/harmonic-layering.md) — detailed page on $\oplus_{\text{ha}}$
- [Negation Check](operators/negation-check.md) — detailed page on $\neg$ application
- [Iterative Refinement](operators/iterative-refinement.md) — detailed page on iterative $\uparrow$ style passes
- [Campaign H1 Results](experiments/2026-03-23_campaign-h1-scaffold-tournament.md) — first harmonic tournament
- [Campaign H2 Results](experiments/2026-04-xx_campaign-h2-temporal-lucidity.md) — temporal composites, diminishing returns finding
- [Heuristics of Libraries](heuristics/libraries.md) — organizational axioms for this wiki
- [Early Heuristics Project Synthesis](heuristics/early-heuristics-project-synthesis.md) — pre-wiki laboratory phase (Oct 2025–Apr 2026)

## Judgment

**Confidence**: High — Canonical source document by the creator, now empirically validated via Campaign H1 scaffold tournament. System-level falsification condition tested and *not met*: algebra-built composites measurably outperform both unstructured prompting and primitive heuristic scaffolds. Typed combiners produce structurally distinct outputs (231-point Elo gap on identical inputs).

**Known Disconfirmers**: Validation limited to 5 strategic decision queries across 4 providers. Moderate inter-judge agreement (W=0.536–0.560). Elo values are pool-relative. $\delta$ (decompression) and $\uparrow$ (update) operators remain empirically untested. **H2 reveals diminishing returns at Stage 3**: combining two strong Stage 2 composites (LJ+AN) via $\oplus_{\text{ha}}$ or $\oplus_{\text{inn}}$ produces regression toward the mean, not additive lift. The compounding advantage may plateau at Stage 2. $\oplus_{\text{ha}}$ works best within families sharing lineage — not between unrelated conceptual families.
