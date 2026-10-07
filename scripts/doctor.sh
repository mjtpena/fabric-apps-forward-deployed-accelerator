#!/usr/bin/env bash
set -euo pipefail
failed=0
for cmd in node npm git docker; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf 'PASS %-10s %s\n' "$cmd" "$($cmd --version 2>&1 | head -n 1)"
  else
    printf 'FAIL %-10s not found\n' "$cmd"
    failed=1
  fi
done
if [ "$failed" -ne 0 ]; then exit 1; fi
echo 'Local prerequisites passed. Complete the target-tenant capability assessment manually.'
