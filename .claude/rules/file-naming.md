# Rule: File Naming

**Status:** advisory
**Owner:** @carlv

## The rule

All files in this repo use **kebab-case**: lowercase letters, words separated by hyphens. No spaces, no underscores, no camelCase.

```
✓ activation-rate.md
✓ acme-q1-2026.md
✓ exec-preso-prep
✗ activationRate.md
✗ activation_rate.md
✗ Activation Rate.md
```

## Why

- URL-safe (no encoding for spaces)
- Consistent across folders
- Easy to autocomplete in the terminal
- Plays nicely with grep and other CLI tools
- Matches our GitHub repo conventions

## Exceptions

- `CLAUDE.md` — convention from Claude Code, kept uppercase
- `README.md`, `CONTRIBUTING.md`, `LICENSE` — standard open source convention
- Anything else: kebab-case

## When you violate this

You probably won't get a code review nit — but a future teammate will spend 3 seconds longer finding your file. Multiplied by 50 files and a year, that adds up.
