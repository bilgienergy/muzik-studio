#!/usr/bin/env bash
# Repo'yu ilk klonladıktan sonra bir kez çalıştır.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

if ! command -v git-lfs >/dev/null 2>&1; then
  echo "git-lfs bulunamadı. Kur: brew install git-lfs" >&2
  exit 1
fi

git lfs install --local
# .als/.adg/.alc gzip'li XML: diff'te okunur hale getir
git config diff.als.textconv "gunzip -c"
git config diff.als.cachetextconv true

echo "Kurulum tamam: LFS aktif, .als diff ayarlandı."
