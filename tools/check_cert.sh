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
# stage 2 (docs/DESIGN.md 21.9): carrier facts of parametrised translated types, their typing lemmas, their compat lemmas
[ -s "$HERE/mglib/literal/carriers2.mg" ] && cat "$HERE/mglib/literal/carriers2.mg" >> "$base"
[ -s "$cert/_literal_typing2.mg" ] && cat "$cert/_literal_typing2.mg" >> "$base"
[ -s "$HERE/mglib/literal/compat2.mg" ] && cat "$HERE/mglib/literal/compat2.mg" >> "$base"
[ -s "$HERE/mglib/literal/model_theorems.mg" ] && cat "$HERE/mglib/literal/model_theorems.mg" >> "$base"
[ -s "$HERE/mglib/literal/uniform.mg" ] && cat "$HERE/mglib/literal/uniform.mg" >> "$base"
off=$(wc -l < "$base")
out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$base" 2>&1)
if ! echo "$out" | grep -q "Everything looks good"; then echo "FAIL base: $(echo "$out" | grep -v '^$' | head -3)"; rm -rf "$tmp"; exit 1; fi
echo "OK   base (typing lemmas: $(grep -c '^Theorem' "$cert/_literal_typing.mg"), compat: $(grep -c '^Theorem' "$HERE/mglib/literal/compat.mg" 2>/dev/null || echo 0))"
check_one() {
  s=$1; f=$tmp/$s.mg
  cat "$base" "$cert/$s.mg" > "$f"
  tries=0; admitted=""
  while true; do
    out=$(timeout ${MGTIMEOUT:-600} "$MG" -ind "$HERE/mglib/God1.index" -I "$HERE/mglib/God1.mgs" -warnaboutleadingspaces "$f" 2>&1)
    if echo "$out" | grep -q "Everything looks good"; then
      note=""; [ -n "$admitted" ] && note="; admitted imports:$admitted"
      echo "OK   $s ($(grep -c '_bridge : ' "$cert/$s.mg") bridges, $(grep -c '^// not bridged' "$cert/$s.mg") not bridged$note)" > "$tmp/$s.res"
      return
    fi
    ln=$(echo "$out" | grep -o 'line [0-9]*' | head -1 | grep -o '[0-9]*')
    thm=""; if [ -n "$ln" ]; then thm=$(head -n "$ln" "$f" | grep -o '^Theorem [A-Za-z_0-9]*' | tail -1); fi
    # CHECK_RETRY (proof pilot, docs/DESIGN.md 22): a failure inside an imported proof hltu_N admits
    # hltu_N and hlt_N and checks the module again, so that one bad import does not lose the shard
    case "$thm" in
      "Theorem hltu_"*)
        if [ "${CHECK_RETRY:-0}" -gt "$tries" ]; then
          name=${thm#Theorem hltu_}
          python3 "$HERE/tools/admit_theorem.py" "$f" "hltu_$name" "hlt_$name" > /dev/null
          admitted="$admitted $name"; tries=$((tries+1)); continue
        fi ;;
    esac
    echo "FAIL $s: $(echo "$out" | grep -v '^$' | head -2 | sed "s/line \([0-9]*\)/line \1 (shard line \$((\1-$off)))/") [$thm]" > "$tmp/$s.res"
    return
  done
}
export -f check_one; export HERE MG cert tmp off base
printf '%s\n' "${shards[@]}" | xargs -P ${JOBS:-4} -I{} bash -c 'check_one {}'
fail=0
for s in "${shards[@]}"; do cat "$tmp/$s.res"; grep -q "^FAIL" "$tmp/$s.res" && fail=1; done
rm -rf "$tmp"
exit $fail
