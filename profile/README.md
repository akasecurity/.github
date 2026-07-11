<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/hero-dark.png">
  <img alt="AKA Security, the security layer for AI agents" src="assets/hero-light.png" width="100%">
</picture>

# AKA Security

Sensitive-data detection and protection for every tool call, MCP server, and RAG pipeline.

![Open source](https://img.shields.io/badge/Open_source-232F3E?style=flat-square)
![Local](https://img.shields.io/badge/Local-232F3E?style=flat-square)
![Auditable](https://img.shields.io/badge/Auditable-232F3E?style=flat-square)
[![akasecurity.io](https://img.shields.io/badge/akasecurity.io-00E0B8?style=flat-square&labelColor=232F3E)](https://akasecurity.io)

<p>
  <img alt="ai-tc: PCI, PHI, and PII never reach a model or a third party" src="assets/monitor.png" width="520">
</p>

## Projects

- **[AI Traffic Control](https://github.com/akasecurity/ai-tc)** (`ai-tc`) — guardrails for the agent harness: regulated data stays on your machine, and every prompt and tool call is scanned before it runs. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square) ![Enterprise](https://img.shields.io/badge/Enterprise-00E0B8?style=flat-square&labelColor=232F3E)
- **[claude-tools](https://github.com/akasecurity/claude-tools)** (`aka-claude-tools`) — the security defaults Claude Code doesn't ship with: clean context, locked-down credentials, guarded egress, layered onto an isolated profile. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square)
- **[flightcrew-skills](https://github.com/akasecurity/flightcrew-skills)** (`flightcrew`) — a second opinion before you merge: an independent multi-model review crew for coding agents. Report-only, cross-family. ![Community](https://img.shields.io/badge/Community-232F3E?style=flat-square)
- **[marketplace](https://github.com/akasecurity/marketplace)** — one place to install every AKA Security tool, across Claude Code, Codex, and more.

## Install

Claude Code and Codex install from one marketplace — **[akasecurity/marketplace](https://github.com/akasecurity/marketplace)**:

```bash
# Claude Code
/plugin marketplace add akasecurity/marketplace
/plugin install flightcrew@akasecurity

# Codex
codex plugin marketplace add akasecurity/marketplace
codex plugin add flightcrew@akasecurity

# Antigravity — direct repo install (no marketplace mechanism)
agy plugin install https://github.com/akasecurity/flightcrew-skills
```

Standalone CLI, no coding agent: `brew install akasecurity/tap/<tool>` via the [Homebrew tap](https://github.com/akasecurity/homebrew-tap).

Each project is licensed in its own repository · <https://akasecurity.io>
