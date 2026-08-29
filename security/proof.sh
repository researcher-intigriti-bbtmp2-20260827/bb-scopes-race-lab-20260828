#!/usr/bin/env bash
set -euo pipefail
actual="$(printf %s "${BB_SCOPE_STALE_SECRET:-}" | sha256sum | cut -d " " -f 1)"
expected="eb169b3c4dbddc08592bea4d64073fa2c342449507175e61e78a40ea1b532e1f"
if [[ "$actual" != "$expected" ]]; then
  echo BB_SCOPE_STALE_SECRET_MISSING
  exit 2
fi
echo BB_SCOPE_STALE_PROTECTED_CODE_EXECUTION
echo BB_SCOPE_STALE_SECRET_MATCH
