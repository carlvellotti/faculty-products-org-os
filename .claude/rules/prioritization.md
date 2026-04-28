# Rule: Prioritization

**Status:** advisory
**Owner:** @carlv

## The rule

We use **RICE** for prioritizing product work that requires comparison across multiple options.

**RICE** = (Reach × Impact × Confidence) / Effort

When you're making a tradeoff between options that need to be compared, score them with RICE before deciding. This is a Claude-readable decision aid — not a religion.

## When to use it

- Sprint planning (comparing candidate stories)
- Quarterly planning (comparing themes)
- Anytime someone asks "should we do X or Y?"

## When NOT to use it

- One-off decisions (just decide, RICE adds no value)
- Things that are obvious P0s (don't waste cycles)
- Things with non-quantifiable impact (e.g., "improve developer happiness" — no, RICE is the wrong tool)

## How to score

| Dimension | Scale | What it means |
|---|---|---|
| **Reach** | # users / quarter | How many people does this touch in a quarter? |
| **Impact** | 0.25 / 0.5 / 1 / 2 / 3 | Massive (3) → minor (0.25) per-user |
| **Confidence** | 0.5 / 0.8 / 1.0 | How sure are we about reach × impact? |
| **Effort** | person-months | All-in effort across PM + design + eng |

## Output format

```markdown
| Option | R | I | C | E | RICE | Notes |
|---|---|---|---|---|---|---|
| Onboarding fix | 1200 | 1 | 0.8 | 1.5 | 640 | High-confidence customer ask |
| Rubric inheritance | 800 | 2 | 0.5 | 2 | 400 | Speculative, blocks expansion |
```

## Key reminder

RICE doesn't decide for you. It surfaces tradeoffs. The PM still decides — but they decide *with eyes open* about the tradeoff.

## When you disagree

Propose a change to this file via PR. Killing the rule is fine if you have a better one. Ignoring it silently is not.
