#!/bin/bash

MSG=${1:-"Uppdaterad"}

cd "$(dirname "$0")"

# Kopiera från projektmappen till roten (krävs för GitHub Pages)
cp "Dags för match/index.html" index.html
cp "Dags för match/apple-touch-icon.png" apple-touch-icon.png

git add "Dags för match/" index.html apple-touch-icon.png .gitignore .claude/
git commit -m "$MSG"
git push

echo ""
echo "✅ Live på: https://mg2000-system.github.io/dags-for-match/"
