# Muzik Studio

Semih'in müzik üretimi için çalışma alanı: şarkı arşivi, Ableton Live projeleri, araçlar ve yayın süreci tek repo'da.

## Klasör yapısı

```
muzik-studio/
├── sarkilar/            Her şarkı için bir klasör: söz, akor, aranje, versiyon notları
│   └── _sablon/         Yeni şarkı şablonu (araclar/yeni-sarki.sh kullanır)
├── projeler/            Ableton Live projeleri (<sarki-adi> Project/ klasörleri)
├── yayin/               Yayın takvimi ve her yayının kontrol listesi
│   └── _sablon/
├── araclar/             Script'ler ve yardımcı araçlar
└── docs/                Çalışma akışı ve kurallar
```

## İlk kurulum (Mac)

```bash
brew install git-lfs     # bir kez
cd muzik-studio
./araclar/kurulum.sh     # LFS + .als diff ayarları
```

## Günlük kullanım

```bash
./araclar/yeni-sarki.sh "Gece Yolculugu"   # yeni şarkı klasörü + Ableton proje klasörü
git add -A && git commit -m "gece-yolculugu: nakarat aranjesi"
git push
```

Ayrıntılar: [docs/is-akisi.md](docs/is-akisi.md)
