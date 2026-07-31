# AGENTS.md — .github

Per-repo conventions for any coding/ops agent. Builds on `~/aka/AGENTS.md` (company layer) and the
global layer — never repeats them.

## What this repo is

GitHub's magic org repo for `akasecurity`. Two jobs:

- **`profile/README.md` is the org landing page**, rendered live at <https://github.com/akasecurity>.
  Anything committed here is public the moment it lands. It is the first page a prospective user,
  candidate, or acquirer sees.
- **Community-health defaults** (`CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `SECURITY.md`,
  `.github/ISSUE_TEMPLATE/`, `.github/PULL_REQUEST_TEMPLATE.md`) are **inherited by every repo in
  the org that doesn't define its own**. A change here silently changes the contributor experience
  in `ai-tc`, `claude-tools`, `preflight-skills`, `marketplace`, and `homebrew-tap` at once.

The folder is `~/aka/.github/` — hidden, because the repo is literally named `.github`. That is the
folder-equals-repo rule, not an exception. `ls -a` to see it.

## The install commands here are load-bearing

`profile/README.md` publishes copy-pasteable install commands. They went stale once already: the
`flightcrew` → `preflight` rename shipped to the marketplace and the Homebrew tap but not to this
page, so the org profile advertised `/plugin install flightcrew@akasecurity` — a plugin the
marketplace no longer served — for eleven days.

**Before editing any install line, read `~/aka/marketplace/.claude-plugin/marketplace.json`** and
match the plugin names it actually serves. Do not write an install command from memory. The public
marketplace serves exactly three: `preflight`, `claude-tools`, `ai-tc`. Codex's aggregator
(`.agents/plugins/marketplace.json` in that repo) serves a subset — check before claiming parity.

Same rule for repo links: `preflight-skills` was renamed on GitHub, and the old URL still resolves
through GitHub's redirect, so a stale link looks healthy in a browser while being wrong.

## Assets

`profile/assets/` holds the hero, avatar, and monitor images as **paired `.html` source + `.png`
render**. The PNG is what the README references; the HTML is the source of truth. Regenerate with:

```bash
cd profile/assets && ./render.sh hero-dark.html hero-dark.png 1280 400
```

`render.sh` drives headless Chrome/Brave at 2× device scale. Edit the HTML and re-render — never
hand-edit a PNG. The SVG logomark and wordmark files are authored directly.

`blank_issues_enabled: false` in the issue-template config is deliberate: every issue routes through
a template.

## Workflow

No CI, no branch protection. Small doc commits straight to `main` are fine, but **treat every push
as an outward publish** — this is a public page under the company's name, not a scratch repo.
