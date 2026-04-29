# /analytics/metrics/ — navigation map

One file per metric. Each file is the canonical answer to "how do we measure X?"

## What's in each metric file

1. **Definition** — plain English, one paragraph
2. **Formula** — the math
3. **SQL** — the actual query against our warehouse
4. **Owner** — named person
5. **Last reviewed** — date
6. **Common pitfalls** — what people get wrong about this metric

## Index

The flat table at `/analytics/metrics.md` is the index — every metric this team tracks, one row each. Use `/metrics-check` to ask "how do we measure X?" without grepping.

## Rule

**A metric without a file in here isn't a metric, it's a vibe.** Don't cite it.

If you need a number that doesn't exist here yet, the path is:

1. Define it (PR a new file with the structure above)
2. Get it reviewed by the metric owner
3. Add it to the table at `/analytics/metrics.md`
4. Then cite it

## Owners

Marcus (eng) and Priya (data) co-own. New metrics go through both.
