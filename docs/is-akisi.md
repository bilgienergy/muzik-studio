# Çalışma akışı

## 1. Fikir → şarkı
1. `./araclar/yeni-sarki.sh "Şarkı Adı"`
2. Söz ve akorları `sarkilar/<slug>/sarki.md`'ye yaz, `durum`'u güncelle.

## 2. Ableton
- Ableton'da yeni set aç, **Save Live Set As** ile `projeler/<Şarkı Adı> Project/<slug>.als` olarak kaydet.
- Dışarıdan sample kullandıysan **File → Collect All and Save** yap, böylece sesler proje klasörüne kopyalanır ve repo'ya girer.
- Splice sample'ları da Collect All ile projeye alınmalı, yoksa başka makinede proje eksik açılır.

## 3. Kaydetme ve versiyonlama
- Anlamlı her adımda commit: `git commit -m "<slug>: köprü eklendi, bas yeniden kaydedildi"`
- Ses dosyaları otomatik LFS'e gider; `.als` normal git'te kalır.
- Büyük bir deneme yapacaksan dal aç: `git switch -c <slug>/deneme-akustik`, beğenmezsen `main`'e dön.

## 4. Mix ve master
- Bounce'ları `projeler/<Şarkı Adı> Project/Exports/` altına `mix-v1.wav`, `master-v1.wav` adlarıyla koy.
- Versiyon notunu `sarki.md`'deki tabloya yaz.

## 5. Yayın
- `sarkilar/<slug>/yayin-kontrol.md` listesini tamamla.
- `yayin/takvim.md`'ye satır ekle.

## Dikkat
- Ableton açıkken `git pull` / `git checkout` yapma; önce seti kaydedip kapat.
- GitHub LFS ücretsiz kotası 1 GB depolama / ay 1 GB indirme. Kota dolunca LFS paketi almak ya da eski bounce'ları arşivlemek gerekir.
