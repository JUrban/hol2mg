#!/bin/bash
# Check generated public shards (prelude + shard) with Megalodon against the God1 signature.
# Usage: tools/check_public.sh DIR [shard ...]
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
dir=$1; shift
shards=("$@")
if [ ${#shards[@]} -eq 0 ]; then shards=($(cd "$dir" && ls *.mg 2>/dev/null | sed 's/\.mg$//')); fi
fail=0
tmp=$(mktemp -d)
for s in "${shards[@]}"; do
  f=$tmp/$s.mg
  cat "$HERE/mglib/native/prelude.mg" "$dir/$s.mg" > "$f"
  out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces -warnaboutreproven "$f" 2>&1)
  if echo "$out" | grep -q "Everything looks good"; then
    echo "OK   $s ($(grep -c '^Theorem' "$dir/$s.mg") theorems)"
  else
    fail=1
    # translate line numbers (prelude offset)
    off=$(wc -l < "$HERE/mglib/native/prelude.mg")
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -3 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/")"
  fi
done
rm -rf "$tmp"
exit $fail
