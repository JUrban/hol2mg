#!/bin/bash
# Proof-export pilot: build a shadow HOL Light directory whose kernel is the proof-recording
# fusion_rec.ml (docs/DESIGN.md 22).  Every other file is a symlink to the pinned checkout.
# Usage: tools/make_hol_rec_dir.sh   (creates $HOL_LIGHT_REC_DIR, default ../repos/hol-light-rec)
set -e
HERE=$(cd "$(dirname "$0")/.." && pwd)
HOL=${HOL_LIGHT_DIR:-$HERE/../repos/hol-light}
REC=${HOL_LIGHT_REC_DIR:-$HERE/../repos/hol-light-rec}
rm -rf "$REC"; mkdir -p "$REC"
for f in "$HOL"/* "$HOL"/.[!.]*; do
  b=$(basename "$f"); [ -e "$f" ] || continue
  case "$b" in fusion.ml) cp "$HERE/hol_export/fusion_rec.ml" "$REC/fusion.ml" ;; .git) ;; *) ln -s "$f" "$REC/$b" ;; esac
done
echo "recording HOL Light directory: $REC"
