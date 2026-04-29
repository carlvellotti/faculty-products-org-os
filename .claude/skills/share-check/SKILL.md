# /share-check

**Owner:** @carlv
**Updated:** 2026-04-29

## When to use

Before merging any PR that adds or changes a skill in `.claude/skills/`. Catches the things that make a skill work for *you* but break for everyone else.

## Inputs

- A skill folder path (e.g., `.claude/skills/competitive-scan/`) — or just run from inside the folder

## What it does

Runs the five shareability rules against the skill and produces a pass/fail report.

1. **Described** — `SKILL.md` has a clear "When to use" + "What it does" + "Inputs". A teammate can read it and understand without asking the author.
2. **No hardcoded personal context** — no "I tend to over-scope," no "my preferred format is..." Anything personal becomes "ask the user about their..." instead.
3. **Dependencies documented** — every external tool, MCP, or API the skill calls is named in the Notes section. No silent dependencies.
4. **No secrets in files** — no API keys, no tokens, no passwords. Greps for common patterns (`API_KEY=`, `Bearer`, `tvly-`, `sk-`).
5. **Testable** — there's enough in the README that a teammate can clone the repo, follow it, and run the skill without asking the author.

For each rule: PASS, FAIL, or NEEDS REVIEW. For each FAIL, a specific suggested edit.

## Quality bar

- Output is a checklist — easy to scan, easy to act on
- Each FAIL points at a specific line or section, not "the file"
- Doesn't reject — recommends fixes. The PR author decides what to do.

## When this skill goes wrong

- The skill being checked imports from another skill — `/share-check` doesn't follow imports, you need to check those manually
- Tone in the skill is borderline personal but not a rule violation — flagged as NEEDS REVIEW for human judgment
- Secrets in `.env.example` are fine (they're examples) — the skill knows to skip files matching `*.example`

## Related

- `/.claude/skills/CLAUDE.md` — the index of skills, updated when a new one passes share-check
- The 5 rules are also explained on the `/orgos` workshop page if a teammate wants the why behind each
