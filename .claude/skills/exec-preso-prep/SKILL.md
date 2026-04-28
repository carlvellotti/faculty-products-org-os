# /exec-preso-prep

**Owner:** @carlv
**Updated:** 2026-04-15

## When to use
Before any meeting where you're presenting up — QBRs, monthly product
reviews, board updates. (Not for peer reviews or weekly syncs.)

## Inputs
- Audience (VP, CEO, full E-team)
- Timeframe (last sprint / month / quarter)
- Meeting goal (status, decision, alignment)

## What it does
1. Pulls customer summaries from `/customers/account-summaries/`
   covering the timeframe
2. Pulls metric alerts and dashboard changes from `/analytics/`
3. Loads the leader's review checklist from
   `/.claude/skills/{leader}-review-checklist/SKILL.md`
4. Drafts a 5-section outline:
   - Headline (lead with the metric)
   - What shipped
   - What we learned (customer evidence)
   - Decisions / asks
   - Next sprint focus
5. Saves to `/scratchpad/exec-presos/{date}-{audience}.md`

## Notes
Outline only — slides are on you. If the leader's checklist doesn't
exist yet, runs without it and flags you to build one
(run `/leader-review-prompt`).

## Quality bar
- Headline leads with a metric, not context
- Every claim ties back to a file in the repo (customer summary or metric)
- "What we learned" includes at least one direct customer quote
- Asks are specific — what decision do you need from this audience?

## When this skill goes wrong
- Repo is stale — the synthesis is only as good as what's been captured
- The leader's checklist file is missing — Claude flags it but the output is generic
- You skip the refine step — 25 min of editing is part of the workflow, not optional

## Related
- `/leader-review-prompt` — generates a leader's review checklist (run once per leader)
- `/customer-call-summary` — feeds the customer evidence
- `/templates/status-update.md` — for the smaller weekly version
