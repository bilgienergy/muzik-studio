#!/usr/bin/env bash
# Kullanım: ./araclar/yeni-sarki.sh "Şarkı Adı"
# sarkilar/<slug>/sarki.md ve projeler/<Şarkı Adı> Project/ oluşturur.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

BASLIK="${1:?Şarkı adı ver: ./araclar/yeni-sarki.sh \"Şarkı Adı\"}"
SLUG=$(printf '%s' "$BASLIK" \
  | perl -CSD -Mutf8 -pe 'tr/çğıöşüÇĞİÖŞÜ/cgiosuCGIOSU/' \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')
TARIH=$(date +%Y-%m-%d)

HEDEF="sarkilar/$SLUG"
if [ -e "$HEDEF" ]; then
  echo "Zaten var: $HEDEF" >&2
  exit 1
fi

mkdir -p "$HEDEF" "projeler/$BASLIK Project"
sed -e "s/{{BASLIK}}/$BASLIK/g" -e "s/{{SLUG}}/$SLUG/g" -e "s/{{TARIH}}/$TARIH/g" \
  sarkilar/_sablon/sarki.md > "$HEDEF/sarki.md"
sed -e "s/{{BASLIK}}/$BASLIK/g" yayin/_sablon/kontrol-listesi.md > "$HEDEF/yayin-kontrol.md"

echo "Oluşturuldu:"
echo "  $HEDEF/sarki.md"
echo "  $HEDEF/yayin-kontrol.md"
echo "  projeler/$BASLIK Project/  <- Ableton'da 'Save Live Set As' ile buraya $SLUG.als olarak kaydet"
