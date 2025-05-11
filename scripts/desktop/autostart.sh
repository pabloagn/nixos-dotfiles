#!/usr/bin/env bash

# ---------------------------------------------------------
# Route: /clients/native/system/desktop/autostart.sh
# Type: Script
# Created by: Pablo Aguirre
# ---------------------------------------------------------

# Wallpaper
hyprpaper &

# Network manager
nm-applet --indicator &

# Bluetooth utils
blueman-applet &

# Menu bar
waybar &
