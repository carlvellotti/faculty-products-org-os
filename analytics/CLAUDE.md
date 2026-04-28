# /analytics/ — navigation map

Where the team's shared analytical context lives.

## Folders

- `metrics/` — definitions. One metric per file. Each file has the formula, the SQL, the schema, and the owner.
- `queries/` — reusable SQL. Versioned, named, attributed.
- `playbooks/` — how we run analytical workflows (funnel analysis, cohort analysis, etc.).

## When to read what

| You're doing... | Read |
|---|---|
| Citing a metric in a doc | `metrics/{metric}.md` (one definition, always) |
| Running a one-off analysis | `playbooks/` first, then `queries/` for re-use |
| Teaching someone a metric | `metrics/{metric}.md` is the canonical answer |

## Owners

- `metrics/` — Marcus (eng), Priya (data) co-own
- `queries/` — Priya (data)
- `playbooks/` — Priya (data)

## Rule

A metric without a `metrics/{metric}.md` file isn't a metric — it's a vibe. Don't cite it.
