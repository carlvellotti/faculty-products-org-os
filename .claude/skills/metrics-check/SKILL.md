# /metrics-check

**Owner:** @priya
**Updated:** 2026-04-29

## When to use

Anytime someone asks "how do we measure X?" or you're about to cite a metric in a doc. Saves the slack thread that always follows ("wait, do we measure activation as 7d or 14d?").

## Inputs

- A metric name (e.g., "activation rate"), or a fuzzy description (e.g., "the thing that measures whether a new user actually used the product")

## What it does

1. Reads `/analytics/metrics.md` (the canonical table — every metric the team tracks, one row each)
2. Matches the input to a metric (exact name, alias, or fuzzy match against the description column)
3. If a match exists, returns:
   - **Definition** — plain English from the row
   - **Formula** — the math
   - **Owner** — who to ping for questions
   - **Source file** — pointer to `/analytics/metrics/{name}.md` for the full SQL + pitfalls
4. If no match exists, lists nearest 3 metrics and offers to scaffold a new one (creates a draft `/analytics/metrics/{name}.md` with the standard structure)

## Quality bar

- Answer cites the row from `/analytics/metrics.md` so the user can verify
- If multiple metrics could match, asks before guessing
- Never hallucinates a metric — if it's not in the table, it doesn't exist

## When this skill goes wrong

- The table is stale — `/metrics-check` is only as good as `/analytics/metrics.md`. Quarterly prune is on Priya.
- New metric proposed but never PRed — Claude suggests it, but the team needs to merge
- User wants real-time numbers, not the definition — different skill (point them at `/analytics/queries/`)

## Related

- `/analytics/metrics/CLAUDE.md` — what each metric file looks like
- `/analytics/metrics.md` — the canonical table this skill reads
- `/analytics/queries/` — where the SQL lives if they need to *run* the metric
