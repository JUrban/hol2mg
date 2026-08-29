#!/bin/bash
# Megalodon-check the literal modules of a profile: native modules + literal model + _literal.mg
# + each shard of literal statements.  Usage: tools/check_literal.sh generated/literal/<profile> [shards]
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
dir=$1; shift
shards=("$@")
if [ ${#shards[@]} -eq 0 ]; then shards=($(cd "$dir" && ls *.mg 2>/dev/null | sed 's/\.mg$//' | grep -v '^_literal$' | sort)); fi
tmp=$(mktemp -d)
base=$tmp/base.mg
cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/literal/model.mg" "$dir/_literal.mg" > "$base"
off=$(wc -l < "$base")
check_one() {
  s=$1; f=$tmp/$s.mg
  cat "$base" "$dir/$s.mg" > "$f"
  out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$f" 2>&1)
  if echo "$out" | grep -q "Everything looks good"; then
    echo "OK   $s ($(grep -c '^Theorem' "$dir/$s.mg") literal statements)" > "$tmp/$s.res"
  else
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -3 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/")" > "$tmp/$s.res"
  fi
}
export -f check_one; export HERE MG dir tmp off base
# the definitions alone first
out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$base" 2>&1)
if ! echo "$out" | grep -q "Everything looks good"; then echo "FAIL _literal: $(echo "$out" | grep -v '^$' | head -3)"; rm -rf "$tmp"; exit 1; fi
echo "OK   _literal ($(grep -c '^Definition' "$dir/_literal.mg") definitions)"
printf '%s\n' "${shards[@]}" | xargs -P ${JOBS:-4} -I{} bash -c 'check_one {}'
fail=0
for s in "${shards[@]}"; do cat "$tmp/$s.res"; grep -q "^FAIL" "$tmp/$s.res" && fail=1; done
rm -rf "$tmp"
exit $fail
