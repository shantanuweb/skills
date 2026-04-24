#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="${1:-md-scripts-references-guide}"

if [[ ! -d "$SKILL_DIR" ]]; then
  echo "Missing skill directory: $SKILL_DIR" >&2
  exit 1
fi

if [[ ! -f "$SKILL_DIR/SKILL.md" ]]; then
  echo "Missing required file: $SKILL_DIR/SKILL.md" >&2
  exit 1
fi

if ! grep -q '^name:' "$SKILL_DIR/SKILL.md"; then
  echo "SKILL.md is missing frontmatter name" >&2
  exit 1
fi

if ! grep -q '^description:' "$SKILL_DIR/SKILL.md"; then
  echo "SKILL.md is missing frontmatter description" >&2
  exit 1
fi

echo "Structure check passed for: $SKILL_DIR"
