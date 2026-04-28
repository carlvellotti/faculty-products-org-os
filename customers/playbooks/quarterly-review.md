# Quarterly Account Review Playbook

**Owner:** @sarah
**Last reviewed:** 2026-04-01

How we run quarterly business reviews with customers. Use this as the source of truth — if you're tempted to do it differently, propose a change to this file via PR.

## Before the QBR (1 week out)

1. Pull the account's current state from `/customers/account-summaries/{account}-{quarter}.md`. If stale, refresh it.
2. Run `/exec-preso-prep` with the account name + "QBR" as inputs. It'll draft an outline pulling from customer summaries and metric trends.
3. Confirm the right stakeholders are invited (decision maker + champion at minimum).

## The meeting itself (45 min)

| Time | What |
|------|------|
| 0:00–0:05 | Re-anchor on shared goals from last QBR |
| 0:05–0:20 | Their wins + open issues (their words, not ours) |
| 0:20–0:35 | Our updates: what shipped, what's coming, why |
| 0:35–0:45 | Asks (both directions) + next steps |

## After (within 48 hours)

1. Write a fresh `account-summaries/{account}-{quarter}.md` synthesizing the conversation.
2. File action items in Linear, tagged with the account.
3. Post a 3-bullet summary in `#customer-feedback`.

## What we don't do

- We don't read prepared decks at the customer. The customer talks more than us.
- We don't open with our roadmap. We open with their goals.
- We don't promise dates we haven't validated with eng.
