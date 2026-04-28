---
metric: activation_rate
owner: marcus
last_reviewed: 2026-04-10
status: canonical
---

# Activation Rate

## Definition

**Activation rate** = (faculty who created at least one rubric AND graded at least one submission within 14 days of account creation) / (all faculty who created an account in that period).

Window: rolling 14 days from account creation. Cohort: all faculty.

## Why this definition

We tested 6 candidate definitions during the activation framework rollout (Q3 2025). This one had the highest correlation with 90-day retention (r=0.71). See `/analytics/playbooks/2025-q3-activation-framework.md` for the full study.

## Don't confuse with

- **Sign-up rate** — anyone who created an account. We don't talk about this metric.
- **First-rubric rate** — single-step. Used by some of our competitors. Less predictive.
- **Engagement rate** — weekly active. Different denominator and use case.

## SQL

See `/analytics/queries/activation-rate.sql` for the canonical query.

## Schema

Pulls from `faculty_users`, `rubrics`, `submissions`. Schema lives in our data warehouse — Marcus owns updates.

## When to update this file

- If we change the definition (very rare — requires full retro)
- If the SQL breaks because of an upstream schema change
- Quarterly review by owner (calendar reminder)

## History

- 2025-09-15: Initial definition shipped after activation framework study
- 2026-01-08: Added 14-day window (was 30, changed for product reasons)
- 2026-04-10: Quarterly review — no changes
