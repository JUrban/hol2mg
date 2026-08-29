#!/bin/bash
# Proof-export pilot: export recorded kernel proofs of Core theorems (own size <= cap) as JSON Lines.
# Usage: tools/hol_proof_export.sh <out.jsonl> [cap] [name1,name2,...]
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
REC=${HOL_LIGHT_REC_DIR:-$HERE/../repos/hol-light-rec}
[ -f "$REC/fusion.ml" ] || "$HERE/tools/make_hol_rec_dir.sh"
out=$(readlink -f "$1"); cap=${2:-1000}; names=${3:-}
mkdir -p "$(dirname "$out")"
only=$(python3 -c "import sys;print('[' + ';'.join('\"%s\"' % n for n in sys.argv[1].split(',') if n) + ']')" "$names")
cd "$REC"
export HOLLIGHT_DIR=$REC HOL2MG=$HERE HOL2MG_PROFILE=core
{
  echo "loadt \"$HERE/hol_export/export.ml\";;"
  echo "loadt \"$HERE/hol_export/proof_export.ml\";;"
  echo "Hol2mg_proof.export \"$out\" $cap $only;;"
  echo "exit 0;;"
} | ./ocaml-hol -I . -init hol.ml > "$out.log" 2>&1; grep -n "^Error\|Error:" "$out.log" | head -5; grep -B3 -A6 "proof_export.ml\", line" "$out.log" | head -30; tail -3 "$out.log"
