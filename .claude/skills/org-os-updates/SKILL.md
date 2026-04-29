# /org-os-updates

**Owner:** @carlv
**Updated:** 2026-04-29

## When to use

Weekly. Posts a summary of what changed in the Org OS to `#org-os` so the team sees the repo moving — new skills, ownership changes, deprecations.

## Inputs

- Date range (defaults to last 7 days)
- Channel (defaults to `#org-os`)

## What it does

1. Reads git history for the date range
2. Categorizes commits into:
   - **New skills** — anything added under `.claude/skills/`
   - **Updated skills** — `SKILL.md` changes
   - **Templates** — adds/edits in `/templates/`
   - **Metrics** — adds/edits in `/analytics/metrics/` or the canonical table
   - **Ownership changes** — frontmatter `Owner:` changes
   - **Deprecations** — anything moved or deleted
3. Drafts a Slack post with:
   - One-line summary at top ("This week in the Org OS: 2 new skills, 1 metric updated, 1 deprecation")
   - Bulleted sections for each category, with the contributor and a link to the PR/commit
   - Closing line pointing at `/.claude/skills/CLAUDE.md` for the full index
4. Posts to `#org-os` (or returns the draft for review if `--draft` is passed)

## Quality bar

- Reads like a useful update, not a changelog dump — small, additive changes get one line; bigger changes get context
- Names contributors so people get credit
- Links to the actual files so anyone curious can read more
- Skips commits that are pure formatting/typo fixes (noise)

## When this skill goes wrong

- Nothing changed this week — post a one-liner ("Quiet week in the OS — that's fine") instead of skipping. Visibility matters.
- A commit touched 20 files at once — Claude summarizes by intent, not by file count
- Slack MCP not configured — falls back to printing the markdown so the user can paste manually

## Related

- `/.claude/connections.md` — confirms the Slack MCP is wired to the right workspace
- `/.claude/skills/CLAUDE.md` — the index this update points at
- The visibility piece is covered in Section 5 of the `/orgos` workshop page
