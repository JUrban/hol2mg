#!/bin/bash
# Proof-export pilot: load HOL Light core with the recording kernel and write proof DAG statistics.
# Usage: tools/hol_proof_stats.sh <out.txt>
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
REC=${HOL_LIGHT_REC_DIR:-$HERE/../repos/hol-light-rec}
[ -f "$REC/fusion.ml" ] || "$HERE/tools/make_hol_rec_dir.sh"
out=$(readlink -f "$1"); mkdir -p "$(dirname "$out")"
cd "$REC"
export HOLLIGHT_DIR=$REC HOL2MG=$HERE
{
  echo "loadt \"$HERE/hol_export/proof_stats.ml\";;"
  echo "Hol2mg_stats.run \"$out\";;"
  echo "exit 0;;"
} | ./ocaml-hol -I . -init hol.ml 2>&1 | grep -v "^0\.\.\|solved at\|^Warning: inventing" | tail -8
