---
title:
owner:
status: draft  # draft | in-review | approved | shipped
target-ship: YYYY-MM-DD
metric: # the ONE metric this is moving
related-prds: # links to dependencies
---

# {title}

## TL;DR
3 sentences. What is it, who's it for, what does success look like.

## The metric
**{metric_name}** — current state: X. Target after launch: Y.

If you can't fill this in, you're not ready to write the PRD.

## Why now
What's changed that makes this the right thing to do this quarter?

## The problem
Specific. With evidence (customer quotes, data, failed competitors). Link to:
- `/customers/account-summaries/{account}.md` — relevant accounts
- `/analytics/investigations/{topic}.md` — relevant analysis

## The proposal
What we're building. User flow, key behaviors, what's in scope.

## Alternatives we ruled out
At least 2. Be specific about why each was worse.

| Alternative | Why we ruled it out |
|---|---|
|  |  |
|  |  |

## What we're explicitly NOT doing
The boundary. Save someone a future "but what about X?" question.

## Risks
- **{risk}**: mitigation plan or accepted trade-off
- **{risk}**: mitigation plan or accepted trade-off

## Plan
| Phase | What | Who | When |
|---|---|---|---|
| 1 |  |  |  |
| 2 |  |  |  |

## Success metrics
- Primary: the metric above
- Counter: what we'd watch to make sure we're not breaking something else

## Open questions
- For {role}: ?

---

*Use `/prd-draft` to scaffold a first pass from a problem statement. Then revise. The skill is a starting point, not the final draft.*
