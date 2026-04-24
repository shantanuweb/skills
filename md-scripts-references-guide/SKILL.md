---
name: md-scripts-references-guide
description: Enforce and scaffold a consistent skill layout with SKILL.md at the root and optional scripts/ and references/ directories. Use when creating or updating a skill and you need to match the guide structure, keep instructions concise, and avoid extra documentation files.
---

# MD, Scripts, and References Structure Guide

## Quick workflow

1. Ensure the skill root contains exactly one `SKILL.md` with valid frontmatter (`name`, `description`).
2. Add `scripts/` only for executable automation that is reusable.
3. Add `references/` only for detailed docs that should be loaded on demand.
4. Keep core workflow instructions in `SKILL.md`; move long details to `references/`.
5. Do not add auxiliary docs (for example: README, changelog, or install guides) unless explicitly required.

## Directory contract

Use this minimal structure:

```text
<skill-name>/
├── SKILL.md
├── scripts/        # optional executable helpers
└── references/     # optional detailed docs loaded as needed
```

Keep paths flat and discoverable. Link each reference file directly from `SKILL.md` instead of nesting deep trees.

## Implementation rules

- Write procedural instructions in imperative voice.
- Keep `SKILL.md` short and focused on decisions/workflow.
- Put code and deterministic operations in `scripts/`.
- Put long-form reference material, schemas, and examples in `references/`.
- Remove placeholder files that do not contribute to real usage.

## Included helper

Run `scripts/validate_structure.sh` from the repository root to verify the required structure for this skill.

## Reference

- For checklist details and rationale, read `references/structure-checklist.md`.
