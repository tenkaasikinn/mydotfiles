#!/bin/bash

set -euo pipefail

# List Aplikasi
list_dnf=(zsh alacritty neovim vlc mpv gnome-tweaks)
list_fp=(app.zen_browser.zen com.brave.Browser com.mattjakeman.ExtensionManager com.vscodium.codium md.obsidian.Obsidian org.ferdium.Ferdium org.onlyoffice.desktopeditors)

# DNF
instal_dnf() { dnf install -y "$@" || true; }

# Flatpak
instal_flatpak() { flatpak install flathub -y "$@" || true; }

# Cek Sudo
if [[ "$EUID" != 0 ]]; then
  echo "Jalankan Script ini pakai sudo"
  exit 1
fi

# Tanggal install
echo "Memulai instalasi pada $(date '+%Y-%m-%d %H:%M:%S')"

instal_dnf "${list_dnf[@]}"
instal_flatpak "${list_fp[@]}"

# Confirmation
echo "Instal Selesai"
