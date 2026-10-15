#!/bin/bash
set -euo pipefail

# Only run in cloud/remote sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Print project README into session context
if [ -f "$CLAUDE_PROJECT_DIR/README.md" ]; then
  echo "=== Project README ==="
  cat "$CLAUDE_PROJECT_DIR/README.md"
  echo "====================="
fi
