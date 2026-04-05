# Heuristic Agent (Agents Repository)

**Status**: Ingested via Lucid Judgment audit (2026-04-05)  
**Confidence**: Medium-High (78 %) — implemented codebase with defined architecture; no runtime metrics or Elo benchmarks yet  
**Disconfirmers**: No performance data; sentinel/process monitoring untested in wiki context  
**Source**: Agents repository (external)

## Overview

An LLM agent shell that injects compressed reasoning heuristics into LLM system prompts, giving agents structured decision-making across four dimensions:

- **Lucid Judgment (LJ)** — clear thinking under decision pressure
- **Agentic Reasoning (AgR)** — what to do next
- **Agentic Reasoning — Innovative (AgI)** — how to learn from failure
- **Agentic Reasoning — Harmonic (AgH)** — when to change course

The heuristic frameworks are sourced from the [Heuristics](https://github.com/hcarstens/Heuristics) framework (vendored as git submodule).

## Capabilities

- **Multi-provider LLM support** — OpenAI, Anthropic, xAI (Grok), Gemini, Ollama via LiteLLM
- **Auto model discovery** — `model_scanner` queries provider APIs, picks best models, caches results (7-day TTL)
- **Tool system** — register callable tools the agent can invoke mid-reasoning
- **Process monitoring** — built-in checks for Accumulator and CryptoFactory background processes
- **Sentinel watchdog** — background daemon: monitor → relaunch → scheduled jobs → LLM-powered diagnosis on failure
- **Audio agent** — voice-activated LJ reasoning on macOS: speak → STT (Whisper) → Lucid Judgment → TTS (macOS `say`). Self-repairs on failure using AgH/AgI/AgR heuristics
- **Interactive and single-goal modes** — CLI with conversation memory

## Architecture

```
src/
  heuristic_agent.py  — Agent shell, heuristics, LiteLLM client, CLI
  llm_router.py       — Unified LLM routing via LiteLLM (retry, cost tracking)
  model_scanner.py    — Auto-discover and verify models from provider APIs
  process_monitor.py  — Background process health checks
  sentinel.py         — Watchdog daemon: monitor → relaunch → scheduled jobs → LLM diagnosis
  audio_agent.py      — Voice-activated LJ reasoning (STT → LLM → TTS)
vendor/Heuristics/    — Heuristics framework (git submodule)
```

## Relationship to Voice-Activated Heuristic Agent (Shortcuts)

The [Voice-Activated Heuristic Agent](voice-activated-heuristic-agent.md) is a zero-code Apple Shortcuts prototype. This Heuristic Agent is the full Python implementation that supersedes it in capability:

| Dimension | Shortcuts Spec | Heuristic Agent (this page) |
|-----------|---------------|----------------------------|
| Runtime | 0 hours (spec only) | Implemented codebase |
| LLM providers | xAI Grok only | OpenAI, Anthropic, xAI, Gemini, Ollama |
| Voice | iOS/macOS Dictate → Speak | Whisper STT → macOS TTS, self-repair |
| Autonomy | Fully supervised | Sentinel watchdog with auto-relaunch |
| Code required | None (Shortcuts) | Python |

Both share the same $\pi_7$(LJ $\oplus$ AgR $\oplus$ AgI $\oplus$ AgH $\oplus$ HAg) derivation.

## Related

- [Heuristic Algebra](../heuristic-algebra.md) — canonical operator reference; agent derived as $\pi_7$ compound
- [Lucid Judgment](../scaffolds/lucid-judgment.md) — primary reasoning engine (Elo 1827)
- [Voice-Activated Heuristic Agent](voice-activated-heuristic-agent.md) — Shortcuts-based prototype (predecessor)
- [What to Build Next Synthesis](what-to-build-next-synthesis.md) — productization phase that specified these agents
- [What to Build Next Retrospective](../experiments/2026-04-05_what-to-build-next-retrospective.md) — proposed AxiomChat benchmarking
- [Early Heuristics Project Synthesis](../heuristics/early-heuristics-project-synthesis.md) — laboratory foundation

## Judgment

**Confidence**: Medium-High (78 %). This is the first implemented codebase in the wiki that embeds the full agentic reasoning stack (AgR/AgI/AgH), providing implementation-level corroboration for frameworks previously flagged as uncorroborated. Multi-provider LLM support resolves the single-provider dependency risk noted in the Shortcuts spec. The audio agent with Whisper STT and self-repair heuristics is a material capability upgrade over the Shortcuts prototype.

**Known Disconfirmers**: No runtime metrics, Elo benchmarks, or user validation data provided. The sentinel watchdog and process monitoring capabilities are domain-specific (Accumulator, CryptoFactory) and not yet tested against wiki-standard evaluation methods. The self-repair claim (AgH/AgI/AgR heuristics on failure) is architecturally specified but empirically unvalidated. The Heuristics framework is vendored as a submodule — framework fidelity depends on submodule version pinning.

**Lint Recommendation**: Run Elo-style benchmark (per build-next retrospective proposal) to generate first performance data. Create wiki pages for AgR, AgI, AgH, HAg when full framework text is available. Update confidence to High upon documented runtime metrics and at least one benchmark result.
