#!/bin/bash
# Check the native infrastructure modules under Megalodon (after the God1 signature) and
# report the admitted theorems.  Usage: tools/check_native.sh [--strict]
HERE=$(cd "$(dirname "$0")/.." && pwd); cd "$HERE"
S=$(mktemp -d); f=$S/native_all.mg
cat mglib/native/prelude.mg mglib/native/finseq.mg mglib/native/order.mg > "$f"
out=$(tools/mgcheck.sh "$f" 2>&1 | grep -v "^Warning: Reproven\|already known")
echo "$out" | grep -q "Everything looks good" || { echo "$out" | head -20; echo "native: FAIL"; rm -rf "$S"; exit 1; }
adm=$(grep -c "^Admitted\." "$f"); qed=$(grep -c "^Qed\." "$f")
echo "native: OK ($qed Qed, $adm Admitted)"
if [ "$adm" != "0" ]; then grep -B1 "^Admitted\." "$f" | grep "^Theorem" | sed 's/ :.*//' | sed 's/^/  admitted: /'; fi
rm -rf "$S"
[ "$1" = "--strict" ] && [ "$adm" != "0" ] && exit 1
exit 0
