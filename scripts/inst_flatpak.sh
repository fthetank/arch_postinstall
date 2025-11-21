#!/usr/bin/env bash
set -eEuo pipefail

# Install Flatpak using pacman
pacman -S --noconfirm flatpak

# Add the Flathub repository if it doesn't exist
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Optional: Install Flatseal for managing Flatpak permissions
flatpak install -y --noninteractive flathub com.github.tchx84.Flatseal