#!/bin/bash
# Check generated public shards (prelude + shard) with Megalodon against the God1 signature.
# Usage: tools/check_public.sh DIR [shard ...]
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
dir=$1; shift
shards=("$@")
if [ ${#shards[@]} -eq 0 ]; then shards=($(cd "$dir" && ls *.mg 2>/dev/null | sed 's/\.mg$//' | sort)); fi
fail=0
tmp=$(mktemp -d)
known=$dir/known_props.txt
: > "$known.new"
for s in "${shards[@]}"; do
  f=$tmp/$s.mg
  cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" > "$f"
  [ -s "$dir/_definitions.mg" ] && [ "$s" != "_definitions" ] && cat "$dir/_definitions.mg" >> "$f"
  cat "$dir/$s.mg" >> "$f"
  out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces -warnaboutreproven "$f" 2>&1)
  echo "$out" | sed -n 's/^WARNING: The proposition given in theorem \([A-Za-z_0-9'"'"']*\) is already known.*/\1/p' >> "$known.new"
  if echo "$out" | grep -q "Everything looks good"; then
    echo "OK   $s ($(grep -c '^Theorem' "$dir/$s.mg") theorems)"
  else
    fail=1
    # translate line numbers (prelude offset)
    off=$(cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" | wc -l)
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -3 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/")"
  fi
done
rm -rf "$tmp"
sort -u "$known.new" > "$known.sorted"; rm -f "$known.new"
if [ -s "$known.sorted" ]; then
  if ! cmp -s "$known.sorted" "$known" 2>/dev/null; then
    cat "$known.sorted" >> "$known"; sort -u -o "$known" "$known"
    echo "NOTE: $(wc -l < "$known.sorted") already-known propositions recorded in $known; regenerate with --known-props to emit them as reuse comments"
  fi
fi
rm -f "$known.sorted"
exit $fail
