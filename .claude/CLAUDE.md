# /.claude/ — navigation map

Claude Code config for this repo. Three things live here:

## skills/

Slash commands the team can run. Each skill is a folder with a `SKILL.md`.

- `/exec-preso-prep` — pull context for an exec preso
- `/competitive-scan` — research a competitor
- `/devils-advocate` — stress-test a draft
- `/share-check` — gate before merging a new skill
- `/metrics-check` — answer "how do we measure X?" from `/analytics/metrics.md`
- `/org-os-updates` — weekly summary of what changed in the repo

See `skills/CLAUDE.md` for the full index and how to add one.

## rules/

Standards Claude applies automatically when working in this repo.

- `file-naming.md` — kebab-case
- `prioritization.md` — RICE for any prioritization task

See `rules/CLAUDE.md` for what's enforced where.

## connections.md

Human-readable list of what this Org OS plugs into — Slack, GitHub, our data warehouse, etc. Project-level MCP config lives in `/.mcp.json` at the repo root.

## Owner

Carl owns the structure. Skill owners are listed inside each `SKILL.md`.
