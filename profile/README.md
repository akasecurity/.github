<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/cover-dark.svg">
  <img src="assets/cover-light.svg" alt="AKA Security on GitHub. Illustration: a map of one road network joining the ai-tc toll plaza, the claude-tools depot, the preflight-skills checkpoint, the oupdate holding yard and the marketplace gantry." width="100%">
</picture>

<p align="center">
  <a href="#projects"><b>Projects</b></a> &nbsp;·&nbsp;
  <a href="#install"><b>Install</b></a> &nbsp;·&nbsp;
  <a href="https://akasecurity.io"><b>akasecurity.io</b></a>
</p>

<h3 align="center">Security tooling and safe defaults for coding agents.</h3>

Sensitive-data detection and protection for every tool call, MCP server, and RAG pipeline.

![Open source](https://img.shields.io/badge/Open_source-232F3E?style=flat-square)
![Local](https://img.shields.io/badge/Local-232F3E?style=flat-square)
![Auditable](https://img.shields.io/badge/Auditable-232F3E?style=flat-square)
[![akasecurity.io](https://img.shields.io/badge/akasecurity.io-00E0B8?style=flat-square&labelColor=232F3E)](https://akasecurity.io)

<p>
  <img alt="ai-tc: PCI, PHI, and PII never reach a model or a third party" src="assets/monitor.png" width="520">
</p>

## Projects

| Project | What it is |
|---|---|
| **[AI Traffic Control](https://github.com/akasecurity/ai-tc)** (`ai-tc`) | Guardrails for the agent harness: regulated data stays on your machine, and every prompt and tool call is scanned before it runs. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square) ![Enterprise](https://img.shields.io/badge/Enterprise-00E0B8?style=flat-square&labelColor=232F3E) |
| **[claude-tools](https://github.com/akasecurity/claude-tools)** (`aka-claude-tools`) | The security defaults Claude Code doesn't ship with: clean context, locked-down credentials, guarded egress, layered onto an isolated profile. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square) |
| **[preflight-skills](https://github.com/akasecurity/preflight-skills)** (`preflight`) | A second opinion before you merge: an independent multi-model review crew for coding agents. Report-only, cross-family. Also ships `secure-research`, cited web research spread across several search engines. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square) |
| **[oupdate](https://github.com/akasecurity/oupdate)** | Recurring, gated dependency updates for a fleet of hosts: supply-chain review before anything is applied. |
| **[marketplace](https://github.com/akasecurity/marketplace)** | One place to install every AKA Security tool, across Claude Code, Codex, and more. |

## Install

Claude Code and Codex install from one marketplace — **[akasecurity/marketplace](https://github.com/akasecurity/marketplace)**:

```bash
# Claude Code
/plugin marketplace add akasecurity/marketplace
/plugin install preflight@akasecurity
/plugin install aka-claude-tools@akasecurity
/plugin install ai-tc@akasecurity

# Codex
codex plugin marketplace add akasecurity/marketplace
codex plugin add preflight@akasecurity

# Antigravity — direct repo install (no marketplace mechanism)
agy plugin install https://github.com/akasecurity/preflight-skills
```

Standalone CLI, no coding agent: `brew install akasecurity/tap/<tool>` via the [Homebrew tap](https://github.com/akasecurity/homebrew-tap).

Each project is licensed in its own repository · <https://akasecurity.io>
