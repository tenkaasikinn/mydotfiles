#!/bin/bash

set -e

echo "Linking dotfiles..."

ln -sf "$PWD/zsh/.zshrc" ~/.zshrc
ln -sf "$PWD/alacritty" ~/.config/alacritty
ln -sf "$PWD/fastfetch" ~/.config/fastfetch
ln -sf "$PWD/oh-my-posh" ~/.config/oh-my-posh

echo "Done. Restart shell."
