# /.claude/skills/ — navigation map

Every skill the team can invoke as a slash command. One folder per skill, each contains a `SKILL.md`.

## Index

| Skill | Owner | What it does |
|---|---|---|
| `/exec-preso-prep` | @carlv | Pulls context for an exec preso draft |
| `/competitive-scan` | @sarah | Structured research on a competitor |
| `/devils-advocate` | @carlv | Stress-tests a draft against common objections |
| `/share-check` | @carlv | Runs the 5 shareability rules against a skill before merge |
| `/metrics-check` | @priya | Answers "how do we measure X?" from `/analytics/metrics.md` |
| `/org-os-updates` | @carlv | Weekly summary of what changed in this repo |

## How to add a new skill

1. Create `.claude/skills/{name}/SKILL.md`
2. Use the standard structure (see any existing skill for the shape):
   - **Owner** + **Updated** in frontmatter
   - **When to use** — one paragraph
   - **Inputs** — what you need before running
   - **What it does** — numbered steps
   - **Quality bar** — how you know it worked
   - **When this skill goes wrong** — failure modes
   - **Related** — adjacent skills
3. Run `/share-check` against it before opening a PR
4. Add a row to the table above

## Rule

Skills are for things people on this team do **more than once**. If it's a one-off, just write a prompt — don't add to the shared layer.
