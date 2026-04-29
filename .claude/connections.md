# Connections — what this Org OS plugs into

Human-readable list of the external tools this OS connects to. The actual config (which MCP servers Claude Code loads) lives in `/.mcp.json` at the repo root.

When a teammate clones the repo and opens Claude Code, these are the connections that come live.

## Tool connections (MCPs)

| Tool | What it's used for | Scope | Owner |
|---|---|---|---|
| Slack | Reading + writing to team channels (`#product`, `#eng`, `#customer-feedback`, `#org-os`) | Workspace: `faculty-products` | @carlv |
| GitHub | Reading PRs, commits, issues; opening PRs from Claude Code | Repo: `faculty-products/*` (private org) | @marcus |
| Linear | Reading + writing tickets | Workspace: `faculty-products` | @sarah |
| Snowflake | Read-only queries against `faculty_products.events` and `faculty_products.users` | Schemas above only | @priya |
| Google Drive | Reading PRDs, strategy docs, customer-facing decks | Folder: `Faculty Products / Shared` | @carlv |

## Scheduled jobs (GitHub Actions)

| Workflow | When it runs | What it does |
|---|---|---|
| `weekly-customer-digest.yml` | Mondays 8am PT | Synthesizes new files in `/customers/interview-notes/` from the last 7 days, posts to `#customer-feedback` |
| `metric-freshness-check.yml` | On every PR that touches `/analytics/` | Checks that any cited metric has a corresponding file in `/analytics/metrics/` |
| `org-os-weekly-update.yml` | Fridays 4pm PT | Runs `/org-os-updates` and posts the summary to `#org-os` |

## How to add a new connection

1. PR a row to the appropriate table above
2. PR the underlying config:
   - MCP → add to `/.mcp.json`
   - GitHub Action → add a workflow file under `/.github/workflows/`
3. Get review from the connection owner

## Owner

Carl owns this file. Individual connections are owned by the people listed above (they handle outages, scope changes, credential rotation).
