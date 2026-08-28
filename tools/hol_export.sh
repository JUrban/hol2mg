#!/bin/bash
# Run a clean HOL Light process for a profile and export the source IR.
# Usage: tools/hol_export.sh <profile-name> <out.jsonl>
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
HOL=${HOL_LIGHT_DIR:-$HERE/../repos/hol-light}
prof=$1; out=$2
pj=$HERE/profiles/$prof.json
[ -f "$pj" ] || { echo "no profile $pj"; exit 1; }
commit=$(git -C "$HOL" rev-parse HEAD)
want=$(python3 -c "import json;print(json.load(open('$pj'))['hol_light_commit'])")
if [ "$commit" != "$want" ]; then echo "HOL Light commit $commit != profile's $want"; exit 1; fi
roots=$(python3 -c "import json;print('\n'.join('needs \"%s\";;' % r for r in json.load(open('$pj'))['roots']))")
out=$(readlink -f "$out")
mkdir -p "$(dirname "$out")"
cd "$HOL"
export HOL2MG_PROFILE=$prof HOL2MG_HOL_COMMIT=$commit
{
  echo "$roots"
  echo "loadt \"$HERE/hol_export/export.ml\";;"
  echo "Hol2mg.export \"$out\";;"
  echo "exit 0;;"
} | ./ocaml-hol -I . -init hol.ml 2>&1 | grep -v "^0\.\.\|solved at\|^Warning: inventing" | tail -20
test -s "$out" && echo "export OK: $(wc -l < "$out") records"
