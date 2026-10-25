#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if [[ $# -ne 1 ]]; then
  echo "Uso: bash scripts/configurar-github.sh https://github.com/USUARIO/REPOSITORIO.git"
  exit 1
fi
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$1"
else
  git remote add origin "$1"
fi
git branch -M main
git push -u origin main
