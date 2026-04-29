# /customers/account-summaries/ — navigation map

One file per top account. Lifetime artifact — append, don't replace.

## Format

`{account-slug}-{quarter}.md` (e.g., `acme-q1-2026.md`).

Each file:

1. **Header** — account name, ARR, primary contact, current status (green / yellow / red)
2. **What's happening** — current product usage, recent changes, open issues
3. **What they care about** — explicit asks, themes from recent calls
4. **Risks** — what would cause them to churn, what we're watching for
5. **Recent calls** — links to interview-notes for the last 3-5 calls

## When to read what

| You're doing... | Read |
|---|---|
| Renewal prep | `{account}-q{current}.md` |
| Cross-account synthesis | All `*-q{current}.md` files |
| Historical trend | All quarters of one account |

## Cadence

- New file at the start of each quarter — copy from prior quarter, update.
- Updated weekly with what changed.

## Owner

Sarah (PM, GradeBook). Ping `@sarah` to add an account or change the format.
