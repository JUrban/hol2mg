#!/bin/bash
# Megalodon-check the certification modules of a profile.
# Usage: tools/check_cert.sh <profile> [shards]   (uses generated/{public,literal,cert}/<profile>)
# Base: native modules + literal model + bridge library + _definitions.mg + _literal.mg + _literal_typing.mg + compat.mg
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
prof=$1; shift
pub=${PUBDIR:-$HERE/generated/public/$prof}; lit=${LITDIR:-$HERE/generated/literal/$prof}; cert=${CERTDIR:-$HERE/generated/cert/$prof}
shards=("$@")
if [ ${#shards[@]} -eq 0 ]; then shards=($(cd "$cert" && ls *.mg 2>/dev/null | sed 's/\.mg$//' | grep -v '^_' | sort)); fi
tmp=$(mktemp -d)
base=$tmp/base.mg
cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/literal/model.mg" "$HERE/mglib/literal/bridge.mg" > "$base"
[ -s "$pub/_definitions.mg" ] && cat "$pub/_definitions.mg" >> "$base"
cat "$lit/_literal.mg" "$cert/_literal_unfold.mg" >> "$base"
[ -s "$HERE/mglib/literal/carriers.mg" ] && cat "$HERE/mglib/literal/carriers.mg" >> "$base"
cat "$cert/_literal_typing.mg" >> "$base"
[ -s "$HERE/mglib/literal/compat.mg" ] && cat "$HERE/mglib/literal/compat.mg" >> "$base"
off=$(wc -l < "$base")
out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$base" 2>&1)
if ! echo "$out" | grep -q "Everything looks good"; then echo "FAIL base: $(echo "$out" | grep -v '^$' | head -3)"; rm -rf "$tmp"; exit 1; fi
echo "OK   base (typing lemmas: $(grep -c '^Theorem' "$cert/_literal_typing.mg"), compat: $(grep -c '^Theorem' "$HERE/mglib/literal/compat.mg" 2>/dev/null || echo 0))"
check_one() {
  s=$1; f=$tmp/$s.mg
  cat "$base" "$cert/$s.mg" > "$f"
  out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$f" 2>&1)
  if echo "$out" | grep -q "Everything looks good"; then
    echo "OK   $s ($(grep -c '_bridge : ' "$cert/$s.mg") bridges, $(grep -c '^// not bridged' "$cert/$s.mg") not bridged)" > "$tmp/$s.res"
  else
    ln=$(echo "$out" | grep -o 'line [0-9]*' | head -1 | grep -o '[0-9]*')
    thm=""; if [ -n "$ln" ]; then sl=$((ln-off)); thm=$(head -n "$sl" "$cert/$s.mg" | grep -o '^Theorem [A-Za-z_0-9]*' | tail -1); fi
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -2 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/") [$thm]" > "$tmp/$s.res"
  fi
}
export -f check_one; export HERE MG cert tmp off base
printf '%s\n' "${shards[@]}" | xargs -P ${JOBS:-4} -I{} bash -c 'check_one {}'
fail=0
for s in "${shards[@]}"; do cat "$tmp/$s.res"; grep -q "^FAIL" "$tmp/$s.res" && fail=1; done
rm -rf "$tmp"
exit $fail
