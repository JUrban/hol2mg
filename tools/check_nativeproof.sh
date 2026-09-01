#!/bin/bash
# Megalodon-check the generated native proofs (docs/DESIGN.md 23) of a profile against the
# native context only: God1 signature + native prelude + the profile's public definitions.
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
prof=$1
dir=${NPDIR:-$HERE/generated/nativeproof/$prof}
pub=${PUBDIR:-$HERE/generated/public/$prof}
tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/native/logic.mg" "$pub/_definitions.mg" "$dir"/*.mg > "$tmp/all.mg"
out=$(timeout "${MGTIMEOUT:-600}" "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$tmp/all.mg" 2>&1) || true
if echo "$out" | grep -q "Everything looks good"; then
  echo "nativeproof $prof: OK ($(grep -hc '^Theorem' "$dir"/*.mg | awk '{s+=$1} END {print s}') proofs)"
else
  ln=$(echo "$out" | grep -o 'line [0-9]*' | head -1 | grep -o '[0-9]*')
  echo "nativeproof $prof: FAIL: $(echo "$out" | head -2 | cut -c1-500)"
  [ -n "$ln" ] && sed -n "$((ln-2)),$((ln))p" "$tmp/all.mg" | cut -c1-300
  exit 1
fi
