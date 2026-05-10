#!/bin/bash

MSG=${1:-"Uppdaterad"}

cd "$(dirname "$0")"

# Synka till preview
cp "Dags för match/index.html" /tmp/dags-for-match/index.html
cp "Dags för match/apple-touch-icon.png" /tmp/dags-for-match/apple-touch-icon.png

git add "Dags för match/" .gitignore .claude/ .github/
git commit -m "$MSG"
git push

echo ""
echo "✅ Publiceras på: https://mg2000-system.github.io/dags-for-match/"
