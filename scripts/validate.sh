#!/usr/bin/env bash
set -e
echo "MODE=${MODE:-local}"
for f in README.md scripts/validate.sh; do
  [ -f "$f" ] && echo "  ok  $f" || { echo "  MISSING $f"; exit 1; }
done
echo "All checks passed."
[ "${1:-}" = "--dry-run" ] && echo "(dry run, nothing changed)"
