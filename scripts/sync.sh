#!/bin/bash
# ESTIA repo sync — usage: GITHUB_TOKEN=xxx bash scripts/sync.sh "commit message"
set -e
MSG="${1:-sync: ESTIA outputs $(date +%F)}"
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OUT=/mnt/user-data/outputs
cd "$REPO_DIR"
cp -f $OUT/*.html brand/documents/ 2>/dev/null || true
cp -f $OUT/*.jpg $OUT/*.png brand/visual/ 2>/dev/null || true
cp -f $OUT/*.docx $OUT/*.pptx office/ 2>/dev/null || true
cp -f $OUT/正隆*.xlsx zhenglong/ 2>/dev/null || true
cp -f /mnt/transcripts/*.txt conversations/ 2>/dev/null || true
sed -i "s/^_Last sync:.*/_Last sync: $(date +%F) · by Claude_/" README.md
git add -A
git -c user.name="Claude" -c user.email="claude@estia.local" commit -m "$MSG" || echo "nothing to commit"
git push "https://twlo79:${GITHUB_TOKEN}@github.com/twlo79/estia_design.git" main
