# Tenka Dotfiles

*Dotfiles pribadi untuk Linux/MacOS yang digunakan dalam kegiatan development dan DevOps sehari-hari.*

Repositori ini berisi file konfigurasi dan skrip yang saya gunakan secara pribadi. Beberapa file berdasarkan atau terinspirasi dari proyek upstream, dengan atribusi yang jelas.

> **Tidak ada klaim kepemilikan atas proyek upstream.**

## Isi Konfigurasi
- Zsh
- Alacritty + tema
- Fastfetch
- Tema Oh My Posh
- Nix Home Manager flake
- Skrip untuk konfigurasi DNS, firewall, dan instalasi aplikasi

## Atribusi

- [Skrip Fastfetch dari Chris Titus Tech](https://github.com/ChrisTitusTech/linutil.git) - MIT License
- [Tema Oh My Posh dari Oh My Posh](https://ohmyposh.dev/) - MIT License
- [Tema warna Alacritty dari Alacritty Theme](https://github.com/alacritty/alacritty-theme.git) - Apache-2.0 License
- [Nix Community Home Manager](https://github.com/nix-community/home-manager.git) - MIT License

---

> **Semua hak cipta milik penulis masing-masing. Repositori ini untuk penggunaan pribadi, backup, dan referensi.**

## Panduan Instalasi Singkat
## 1. Clone Repositori
```
git clone https://github.com/tenkaasikinn/mydotfiles.git
cd mydotfiles
```

## 2. Instal Aplikasi yang Dibutuhkan
```
cd script_install_aplikasi
sudo ./install-aplikasi.sh
```

## 3. Konfigurasi DNS dan Firewall
```
cd ../config_dns_&_firewall
sudo ./dns-config.sh
sudo ./firewall-config.sh
```

## 4. Konfigurasi Nix
```
cd ../nix_configuration_file
nix run home-manager/master --switch --flake .#tenka
```

**Untuk update konfigurasi Nix**
```
nix flake update
nix run home-manager/master --switch --flake .#tenka
```

## 5. Ricing / Konfigurasi Pribadi
**Ubah shell ke Zsh**
```
chsh -s /bin/zsh
```

**Salin File Konfigurasi**
- `zsh/.zshrc` → `$HOME`
- `oh-my-posh/jandedobbeleer.omp.json` → `$HOME (install Oh My Posh terlebih dahulu)`
- `alacritty/*` → `$HOME/.config/alacritty/`
- `fastfetch/*` → `$HOME/.config/fastfetch/`

**Tools Tambahan**
- [Oh My Posh](https://ohmyposh.dev/)
- [Lazyvim](https://www.lazyvim.org/)
- [Tela Circle Icon](https://www.gnome-look.org/p/1359276)
- [Bibata Ice Cursor](https://www.gnome-look.org/p/1197198)

## 6. Setup Browser
### Browser
- Zen Browser (default)
- Brave (untuk YouTube & browsing umum)

### Ekstensi (contoh Zen Browser)
- Proton Pass
- uBlock Origin
- Multi Account Container
- Block YouTube Shorts
- Clear URLs

### Website yang Dipin
- **Essential:** Notion, GitHub, Spotify
- **Pribadi:** ChatGPT, Claude
- **Coding:** W3Schools, Docker Tutorial, Rust Tutorial

### Pengaturan Browser
- Only HTTPS
- DoH Cloudflare
- Gunakan Multi Account Container untuk semua akun sosial

## Struktur Repositori
```
.
├── alacritty
├── config_dns_&_firewall
├── fastfetch
├── first_installation_guide
├── LICENSE
├── nix_configuration_file
├── oh-my-posh
├── README-ID.md
├── script_install_aplikasi
└── zsh
```
## Lisensi
MIT

***Jika anda berasal dari luar  silakan baca dalam [English 🇬🇧](README.md)***