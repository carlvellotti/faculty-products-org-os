# Faculty Products — Org OS

A worked example of a **Org OS** for a fictional company called Faculty Products. Companion to the [Claude Code for Orgs](https://fullstackpm.com/orgos) workshop.

## What this is

A populated example of how a real product team's shared workflow layer might look. Browse the folders to see how the four buckets — **Context, Actions, Behavior, Connections** — show up in practice.

```
.
├── CLAUDE.md                  # the lean root — the index, not the content
├── .mcp.json                  # CONNECTIONS: project-level MCP config
├── .env.example               # env vars the MCP config expects
├── customers/                 # CONTEXT: customer calls, summaries, playbooks
├── analytics/                 # CONTEXT: metric definitions, queries, playbooks
│   └── metrics.md             # the canonical metrics table (read by /metrics-check)
├── templates/                 # CONTEXT: PRD, status update, RFC structures
└── .claude/
    ├── CLAUDE.md              # what's in this folder
    ├── connections.md         # CONNECTIONS: human-readable list of plug-ins
    ├── skills/                # ACTIONS: shared workflows (slash commands)
    └── rules/                 # BEHAVIOR: file naming, prioritization, etc.
```

Every subfolder also has its own `CLAUDE.md` — the navigation map for that folder. Root tells Claude where to look; nested files tell Claude what's inside.

## How to use it

**Browse first.** Open these in order to see how a Org OS is wired:

1. `CLAUDE.md` — the lean root file (under one page, with team roster + Slack channels)
2. `customers/CLAUDE.md` — example of a nested CLAUDE.md as a navigation map
3. `customers/account-summaries/acme-q1-2026.md` — what captured customer knowledge looks like
4. `.claude/skills/exec-preso-prep/SKILL.md` — what a skill file looks like
5. `.claude/skills/share-check/SKILL.md` — the gate skill that runs the 5 shareability rules
6. `.claude/skills/metrics-check/SKILL.md` — answers "how do we measure X?" from the metrics table
7. `.claude/skills/org-os-updates/SKILL.md` — weekly visibility post for `#org-os`
8. `.claude/connections.md` — human-readable list of what this OS plugs into
9. `analytics/metrics.md` — the canonical metrics table
10. `.claude/rules/prioritization.md` — what a team rule looks like

**Then clone it and adapt.** Replace the FP-specific content with yours. The structure is the load-bearing thing.

```bash
git clone https://github.com/carlvellotti/faculty-products-org-os.git my-org-os
cd my-org-os
# Edit CLAUDE.md with your team's roster + channels
# Replace the customer summaries with your accounts
# Replace the metric definitions with your metrics
# Keep the skills + rules structure, add your own
```

## Where the workshop fits

This repo is the example. The [/orgos page](https://fullstackpm.com/orgos) walks through it — what each piece is, why it's structured this way, and how the four buckets compose into a flow when you actually use it.

For the live workshop on **April 29, 2026**, this is the repo we walk through on screen.

## Companion

- [Blank Org OS starter](https://github.com/carlvellotti/org-os-starter) — same structure, no FP content. Drop your team in.

## Contributing

This is a teaching example, not a living product. Pull requests welcome if you spot bugs or want to suggest improvements — see `CONTRIBUTING.md`.

---

Built by [Carl Vellotti](https://fullstackpm.com).
