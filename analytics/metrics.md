# Faculty Products — metrics index

The canonical list of every metric this team tracks. One row each. If it's not here, it's not a metric — it's a vibe.

`/metrics-check` reads this file. Update it when you add or change a metric.

| Metric | Definition | Formula | Owner | Source file |
|---|---|---|---|---|
| Activation rate | % of signed-up teachers who reach "first useful action" within 7 days | `count(activated) / count(signed_up)` over 7d window | @marcus | [`metrics/activation-rate.md`](./metrics/activation-rate.md) |
| Weekly actives | Distinct users with ≥1 product action in the last 7 days | `count(distinct user_id where action_ts > now() - 7d)` | @priya | (TBD — PR welcome) |
| Time to first PRD | Median time from user signup to first PRD created in-product | `median(first_prd_ts - signup_ts)` | @priya | (TBD) |
| GradeFlow attach | % of GradeBook accounts also using GradeFlow ≥1x/week | `count(both_active) / count(gradebook_active)` weekly | @sarah | (TBD) |
| Renewal rate | % of accounts whose subscription renews on time | `count(renewed) / count(eligible_for_renewal)` quarterly | @sarah | (TBD) |
| Customer NPS | Standard NPS, surveyed quarterly | `(promoters - detractors) / total * 100` | @carlv | (TBD) |

## Conventions

- Rows are sorted by frequency of citation (most-cited at top)
- New metric = PR adds a row here AND a `metrics/{name}.md` file
- Renaming a metric = update both this table and the source file in the same PR
- Deprecating = strike through the row and add `(deprecated YYYY-MM)` to the metric name; don't delete (history matters)

## Owner

Priya (data) maintains the table. Marcus (eng) reviews any change to a formula.
