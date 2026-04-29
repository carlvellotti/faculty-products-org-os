# /analytics/queries/ — navigation map

Reusable SQL. Versioned, named, attributed. Don't re-invent the wheel.

## File naming

`{snake-case-name}.sql` (e.g., `activation-rate.sql`, `weekly-actives-by-cohort.sql`).

## Format

Every query starts with a header comment:

```sql
-- {snake-case-name}.sql
-- Purpose: <one line>
-- Owner: @priya
-- Last reviewed: 2026-04-15
-- Schema: faculty_products.events (current)
```

## When to add a new query

You wrote a query for a one-off and you (or anyone) might run something similar again. PR it in. Cheap to add, expensive to redo.

## When to update vs. add

- **Same logic, schema migration** → update in place, bump `Last reviewed`
- **Different logic** → new file, link from the old one's header if it supersedes

## Owner

Priya (data). Anyone can PR a query — Priya reviews for performance and correctness.
