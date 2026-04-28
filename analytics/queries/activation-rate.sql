-- Activation rate (canonical)
-- Owner: @marcus
-- Definition: /analytics/metrics/activation-rate.md
-- Last verified: 2026-04-10

WITH cohort AS (
  SELECT
    u.user_id,
    u.created_at
  FROM faculty_users u
  WHERE u.created_at BETWEEN @start_date AND @end_date
),
activated AS (
  SELECT DISTINCT c.user_id
  FROM cohort c
  JOIN rubrics r
    ON r.created_by = c.user_id
    AND r.created_at <= c.created_at + INTERVAL '14 days'
  JOIN submissions s
    ON s.graded_by = c.user_id
    AND s.graded_at <= c.created_at + INTERVAL '14 days'
)
SELECT
  COUNT(DISTINCT a.user_id) * 1.0 / COUNT(DISTINCT c.user_id) AS activation_rate,
  COUNT(DISTINCT c.user_id) AS cohort_size,
  COUNT(DISTINCT a.user_id) AS activated_count
FROM cohort c
LEFT JOIN activated a USING (user_id);
