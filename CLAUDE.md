# Claude için çalışma notları

- Dil: Türkçe. Commit mesajları Türkçe, `<sarki-slug>: <ne değişti>` biçiminde.
- DAW: Ableton Live. Projeler `projeler/<Sarki Adi> Project/` altında, ana dosya `<sarki-slug>.als`.
- `.als` dosyaları gzip'li XML'dir. İçeriğe bakmak için: `gunzip -c dosya.als | less`. Elle düzenleme yapma; Ableton'da açılmayan bir proje ciddi kayıptır.
- Ses dosyaları (wav/aif/flac/mp3) Git LFS ile tutulur. Yeni bir ses formatı eklenirse `.gitattributes`'a ekle.
- `Backup/` klasörleri ve `.asd` analiz dosyaları repo'ya girmez (Ableton yeniden üretir).
- Her şarkının tek doğru bilgi kaynağı `sarkilar/<slug>/sarki.md`. Ton, BPM, durum değişince orayı güncelle.
- Yayın işleri `yayin/` altında; bir şarkı yayına girince `yayin/takvim.md`'ye satır ekle.
- Dosya silmeden önce sor.
