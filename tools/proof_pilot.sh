#!/bin/bash
# Proof-export pilot (docs/DESIGN.md 22): import the recorded HOL Light proofs of a profile into the
# uniform model, check the resulting certification modules and count fully proved theorems.
# The artifacts live under generated/proofcert/<profile>/ (not committed: hundreds of MB).
# Usage: tools/proof_pilot.sh <profile> [cap]    (JOBS, MGTIMEOUT honoured)
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
prof=${1:-core}; cap=${2:-1000}
proofs=$HERE/generated/internal/$prof.proofs.jsonl
[ -s "$proofs" ] || "$HERE/tools/hol_proof_export.sh" "$proofs" "$cap" "" "${FORCE:-}"
out=$HERE/generated/proofcert/$prof
rm -rf "$out/public" "$out/literal" "$out/cert"; mkdir -p "$out/public" "$out/literal" "$out/cert"
roots=$(python3 -c "import json;print(','.join(json.load(open('$HERE/profiles/$prof.json')).get('mappings', ['mappings/core.json','mappings/lists.json'])))" 2>/dev/null || echo mappings/core.json,mappings/lists.json)
cd "$HERE"
./bin/hol2mg translate --export generated/internal/$prof.jsonl --sig mglib/God1.mgs --mappings mappings/core.json,mappings/lists.json \
  --out "$out/public" --literal-out "$out/literal" --cert-out "$out/cert" --profile $prof \
  --srcindex generated/internal/$prof.srcindex.json --timeout 10 --known-props generated/public/$prof/known_props.txt \
  --proofs "$proofs" 2> "$out/translate.stderr" > /dev/null
echo "translate: $(grep -c 'proof import' "$out/translate.stderr") proofs not imported; $(du -sh "$out/cert" | cut -f1) of certification modules"
CHECK_RETRY=${CHECK_RETRY:-2} JOBS=${JOBS:-4} MGTIMEOUT=${MGTIMEOUT:-5400} PUBDIR="$out/public" LITDIR="$out/literal" CERTDIR="$out/cert" tools/check_cert.sh $prof > "$out/check.log" 2>&1 || true
python3 tools/cert_finalize.py $prof "$out/check.log" --manifest "$out/public/$prof.manifest.json" --cert-dir "$out/cert" | tee "$out/summary.txt"
grep "^FAIL" "$out/check.log" | cut -c1-300 | head -20
echo "pilot done"
