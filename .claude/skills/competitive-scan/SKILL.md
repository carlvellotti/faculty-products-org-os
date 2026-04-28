# /competitive-scan

**Owner:** @marcus
**Updated:** 2026-03-28

## When to use
- Before a strategy doc that touches a competitive surface area
- After a competitor announces something material
- Quarterly, as part of the planning rhythm
- When a customer asks "are you going to do X like {competitor}?"

## Inputs
- Surface area (product line, feature, market)
- Time window (last quarter / last 6 months / last year)
- Optional: specific competitors to focus on (else all known)

## What it does
1. Loads the canonical competitor list from `/customers/playbooks/competitive-set.md`
2. For each competitor:
   - Fetches their changelog / release notes / blog
   - Searches X and Hacker News for recent mentions
   - Pulls any analyst coverage (Gartner, Forrester) we have access to
3. Synthesizes by surface area:
   - What did they ship in the window?
   - What did they say about strategy?
   - Where are they investing (hiring signals)?
4. Outputs a comparison matrix + a 1-page "what changed" memo
5. Saves to `/customers/competitive-investigations/{date}-{topic}.md`

## What it does NOT do
- Make recommendations (that's a separate strategy step)
- Predict their next move (we don't claim to know)
- Compare on price (handled separately by sales ops)

## Quality bar
- Every claim has a source URL
- Distinguishes between "shipped" and "announced" — these are different
- Flags signals (hiring, exec changes) separately from product moves

## Notes
Competitive intel decays fast. If the file is older than 60 days, re-run it before citing.

## Related
- `/customers/playbooks/competitive-set.md` — canonical competitor list (Marcus owns)
- `/exec-preso-prep` — uses this output as one of its inputs
