#!/bin/bash

MSG=${1:-"Uppdaterad"}

cd "$(dirname "$0")"

git add "Dags för match/" .gitignore .claude/ .github/
git commit -m "$MSG"
git push

echo ""
echo "✅ Publiceras på: https://mg2000-system.github.io/dags-for-match/"
