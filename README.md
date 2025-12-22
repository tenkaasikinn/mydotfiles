# Tenka Backup Dotfiles & Scripts

*Personal Linux/MacOS dotfiles used for daily development and DevOps work.*

This repository contains my personal configuration files and scripts. Some files are based on or inspired by upstream projects, with proper attribution.

> **No ownership is claimed over upstream projects.**

## Included Configurations

- Zsh
- Alacritty + themes
- Fastfetch
- Oh My Posh theme
- Nix Home Manager flake
- Scripts for DNS, firewall, and application installation

## Attribution

- [Fastfetch scripts by Chris Titus Tech](https://github.com/ChrisTitusTech/linutil.git) - MIT License
- [Oh My Posh themes by Oh My Posh](https://ohmyposh.dev/) - MIT License
- [Alacritty color themes by Alacritty Theme](https://github.com/alacritty/alacritty-theme.git) - Apache-2.0 License
- [Nix Community Home Manager](https://github.com/nix-community/home-manager.git) - MIT License

---

 > **All rights belong to their respective authors. This repository is for personal use, backup, and reference only.**

## Quick Setup

## 1. Clone Repository
``` bash
git clone https://github.com/tenkaasikinn/mydotfiles.git
cd mydotfiles
```

## 2. Install Required Applications
```
cd script_install_aplikasi
sudo ./install-aplikasi.sh
```

## 3. Configure DNS and Firewall
```
cd ../config_dns_&_firewall
sudo ./dns-config.sh
sudo ./firewall-config.sh
```

## 4. Configure Nix

```
cd ../nix_configuration_file
nix run home-manager/master --switch --flake .#tenka
```

**To update Nix configuration**
```
nix flake update
nix run home-manager/master --switch --flake .#tenka
```

## 5. Ricing / Personal Setup
**Change shell to Zsh**
```
chsh -s /bin/zsh
```

**Copy Config Files**

- `zsh/.zshrc` → `$HOME`
- `oh-my-posh/jandedobbeleer.omp.json` → `$HOME (install Oh My Posh first)`
- `alacritty/*` → `$HOME/.config/alacritty/`
- `fastfetch/*` → `$HOME/.config/fastfetch/`

**Additional Tools**
- [Oh My Posh](https://ohmyposh.dev/)
- [Lazyvim](https://www.lazyvim.org/)
- [Tela Circle Icon](https://www.gnome-look.org/p/1359276)
- [Bibata Ice Cursor](https://www.gnome-look.org/p/1197198)


## 6. Browser Setup
### Browsers
- Zen Browser (default)
- Brave (YouTube & general browsing)

### Extensions (example for Zen Browser)
- Proton Pass
- uBlock Origin
- Multi Account Container
- Block YouTube Shorts
- Clear URLs

### Pinned Websites
- **Essential:** Notion, GitHub, Spotify
- **Personal:** ChatGPT, Claude
- **Coding:** W3Schools, Docker Tutorial, Rust Tutorial

### Browser Settings
- Only HTTPS
- DoH Cloudflare
- Use Multi Account Container for all social accounts

## Repository Structure
```
.
├── alacritty
├── config_dns_&_firewall
├── fastfetch
├── first_installation_guide
├── LICENSE
├── nix_configuration_file
├── oh-my-posh
├── README.md
├── script_install_aplikasi
└── zsh
```

## License
MIT

***If you're Indonesian Please Read in [Bahasa Indonesia 🇮🇩](README-ID.md) instead***