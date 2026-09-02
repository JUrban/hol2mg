#!/bin/bash
# Parallel variant of check_public.sh (default 4 jobs; set JOBS).  Same semantics/outputs.
HERE=$(cd "$(dirname "$0")/.." && pwd)
MG=${MEGALODON:-$HERE/../repos/Megalodon/bin/megalodon}
dir=$1; shift
shards=("$@")
if [ ${#shards[@]} -eq 0 ]; then shards=($(cd "$dir" && ls *.mg 2>/dev/null | sed 's/\.mg$//' | sort)); fi
tmp=$(mktemp -d)
known=$dir/known_props.txt
off=$(cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/native/logic.mg" | wc -l)
check_one() {
  s=$1; f=$tmp/$s.mg
  cat "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/native/logic.mg" > "$f"
  [ -s "$dir/_definitions.mg" ] && [ "$s" != "_definitions" ] && cat "$dir/_definitions.mg" >> "$f"
  cat "$dir/$s.mg" >> "$f"
  out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces -warnaboutreproven "$f" 2>&1)
  echo "$out" | sed -n 's/^WARNING: The proposition given in theorem \([A-Za-z_0-9'"'"']*\) is already known.*/\1/p' > "$tmp/$s.known"
  if echo "$out" | grep -q "Everything looks good"; then
    echo "OK   $s ($(grep -c '^Theorem' "$dir/$s.mg") theorems)" > "$tmp/$s.res"
  else
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -3 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/")" > "$tmp/$s.res"
  fi
}
export -f check_one; export HERE MG dir tmp off
printf '%s\n' "${shards[@]}" | xargs -P ${JOBS:-4} -I{} bash -c 'check_one {}'
fail=0
for s in "${shards[@]}"; do cat "$tmp/$s.res"; grep -q "^FAIL" "$tmp/$s.res" && fail=1; done
cat "$tmp"/*.known 2>/dev/null | sort -u > "$known.sorted"
# drop names whose proposition is stated by the native infrastructure (hand-bridged
# lemmas, e.g. logic.mg): those public theorems keep their own natively proved statements
if [ -s "$known.sorted" ]; then
  sed -n "s/^Theorem [A-Za-z_0-9']* : \(.*\)$/\1/p" "$HERE/mglib/native/prelude.mg" "$HERE/mglib/native/finseq.mg" "$HERE/mglib/native/order.mg" "$HERE/mglib/native/logic.mg" > "$tmp/native_props.txt"
  : > "$tmp/keep.txt"
  while read -r n; do
    prop=$(grep -h "^Theorem $n : " "$dir"/*.mg | head -1 | sed "s/^Theorem $n : //")
    if [ -n "$prop" ] && grep -qF -- "$prop" "$tmp/native_props.txt"; then :; else echo "$n" >> "$tmp/keep.txt"; fi
  done < "$known.sorted"
  sort -u "$tmp/keep.txt" > "$known.sorted"
fi
if [ -s "$known.sorted" ]; then
  if ! cmp -s "$known.sorted" "$known" 2>/dev/null; then
    cat "$known.sorted" >> "$known"; sort -u -o "$known" "$known"
    echo "NOTE: $(wc -l < "$known.sorted") already-known propositions recorded in $known; regenerate with --known-props to emit them as reuse comments"
  fi
fi
rm -f "$known.sorted"; rm -rf "$tmp"
exit $fail
