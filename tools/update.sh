#!/bin/bash
# One-command statement update for a profile:
#   tools/update.sh <profile> [--export]
# Steps: (optional) export from a clean HOL Light, index sources, translate,
# Megalodon-check, re-translate with reuse information, final check.
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd); cd "$HERE"
prof=$1; shift || true
exp=generated/internal/$prof.jsonl
if [ "$1" == "--export" ] || [ ! -s "$exp" ]; then tools/hol_export.sh "$prof" "$exp"; fi
python3 tools/index_sources.py "$exp" "${HOL_LIGHT_DIR:-$HERE/../repos/hol-light}" generated/internal/$prof.srcindex.json
out=generated/public/$prof
maps=$(python3 -c "import json;print(','.join('mappings/'+m for m in json.load(open('profiles/$prof.json')).get('mappings',['core.json'])))")
run() { ./bin/hol2mg translate --export "$exp" --sig mglib/God1.mgs --mappings "$maps" --out "$out" --profile "$prof" --srcindex generated/internal/$prof.srcindex.json --timeout 10 --known-props "$out/known_props.txt" "$@"; }
run
tools/check_public.sh "$out" || true
run
tools/check_public.sh "$out"
cp "$out/$prof.report.md" generated/reports/$prof.report.md
cp "$out/$prof.manifest.json" generated/manifests/$prof.manifest.json
python3 tools/review_page.py "$prof" >/dev/null && echo "review page: generated/reports/$prof.review.html"
echo "update of profile $prof complete"
