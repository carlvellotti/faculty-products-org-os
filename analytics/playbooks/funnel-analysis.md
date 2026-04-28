# Funnel Analysis Playbook

**Owner:** @priya
**Last reviewed:** 2026-03-20

How we run a funnel analysis. Use this whenever someone asks "where are users dropping off?"

## When to use this

- Investigating a step where conversion is below benchmark
- Comparing funnel performance across cohorts
- Validating a hypothesis about a specific drop-off point

## When NOT to use this

- Pre-product-market-fit (you don't have a stable funnel yet)
- One-shot debugging (use ad-hoc SQL, save time)
- "Engagement" questions (funnels measure conversion, not engagement)

## The 5 steps

1. **Define the funnel.** Get every step on paper. Don't assume — write it down. Validate with the eng owner that the events fire at each step.
2. **Pick the cohort.** Time window + segment. Document both in your output.
3. **Pull the data.** Use `/analytics/queries/funnel-conversion.sql` if it covers your case. Otherwise write a new one and add to `queries/`.
4. **Find the cliff.** The step with the biggest absolute drop deserves attention first. Don't get distracted by interesting-but-small drops.
5. **Validate before recommending.** Talk to 2 customers in that drop-off cohort before drafting recommendations.

## Common mistakes

- Treating funnel data as causal. It's correlational. The cliff tells you *where* to look, not *why*.
- Comparing funnels across product changes without holding cohort fixed.
- Reporting absolute conversion without benchmark comparison.

## Output format

When you're done, file a summary at `/analytics/investigations/{date}-{topic}.md` with:
- TL;DR (1-line)
- Funnel definition + cohort
- The cliff(s)
- Customer evidence
- Recommendation + owner
