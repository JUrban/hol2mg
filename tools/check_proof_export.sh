#!/bin/bash
# Fast type-check of hol_export/proof_export.ml against the kernel stub (no HOL Light load).
HERE=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
sed 's/^open Hol2mg;;$/open Hol2mg/' "$HERE/hol_export/proof_export.ml" > "$tmp/body.ml"
cat "$HERE/hol_export/proof_export_stub.ml" "$tmp/body.ml" > "$tmp/check.ml"
if ocaml -noprompt "$tmp/check.ml" 2>&1 | grep -q "^Error"; then ocaml -noprompt "$tmp/check.ml" 2>&1 | grep -A6 "^File\|^Error" | head -20; exit 1; else echo "proof_export.ml: OK"; fi
