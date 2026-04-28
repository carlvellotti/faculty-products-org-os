# Faculty Products — Org OS

This repo is the team's shared workflow layer. If you're new, start here.

## Where stuff lives
- `/customers/`      — calls, summaries, account profiles
- `/analytics/`      — metrics, queries, schemas, playbooks
- `/templates/`      — PRDs, status updates, RFCs
- `/.claude/skills/` — shared workflows (slash commands)
- `/.claude/rules/`  — team standards (file naming, prioritization)

## Team
| Name   | Role             | Slack    | GitHub      |
|--------|------------------|----------|-------------|
| Carl   | PM, GradeFlow    | @carlv   | @cvellotti  |
| Sarah  | PM, GradeBook    | @sarah   | @sarahb     |
| Marcus | Eng              | @marcus  | @marcusk    |
| Priya  | Data             | @priya   | @priyad     |
| Joel   | Design           | @joel    | @joelw      |
| Mara   | Ops              | @mara    | @marak      |

## Slack channels
- `#product`           — async product discussion, decisions
- `#eng`               — engineering coordination
- `#customer-feedback` — auto-posted customer call summaries
- `#data-questions`    — analytics requests, metric clarifications

## How we ship features
A feature doesn't merge until the repo is updated:
- Metrics defined in `/analytics/metrics/`
- Customer impact captured in `/customers/`
- Launch checklist run from `/templates/launch-checklist.md`

## Conventions
- Filenames: kebab-case (see `/.claude/rules/file-naming.md`)
- Prioritization: RICE (see `/.claude/rules/prioritization.md`)
- All shared skills have a named owner in their SKILL.md frontmatter
