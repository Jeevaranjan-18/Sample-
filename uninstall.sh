#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "[*] Removing installed dotfiles..."

# Remove configs installed by the repo
rm -rf ~/.config/hypr
rm -rf ~/.config/waybar
rm -rf ~/.config/kitty
rm -rf ~/.config/rofi
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/gtk-4.0
rm -rf ~/.config/wlogout
rm -rf ~/.config/mako

# Remove theme assets
rm -rf ~/.themes/*
rm -rf ~/.icons/*

# Remove fonts installed by dotfiles
rm -rf ~/.local/share/fonts/*

# Restore backups if install script created them
if [ -d "$HOME/.config-backup" ]; then
    echo "[*] Restoring config backup..."
    cp -r ~/.config-backup/* ~/.config/
fi

# Remove dotfiles repo if desired
read -p "Remove dotfiles repository as well? (y/n): " ans
if [[ "$ans" == "y" ]]; then
    rm -rf "$DOTFILES_DIR"
fi

echo "[✓] Dotfiles removed."
echo "You may want to reboot or restart Hyprland."
