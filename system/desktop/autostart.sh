#!/usr/bin/env bash

# ---------------------------------------------------------
# Route:............/system/desktop/autostart.sh
# Type:.............Script
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

# Wallpaper
hyprpaper &

# Autostart network manager
nm-applet --indicator &

# Execute bluetooth utils
blueman-applet &

# Wallpaper & menu bar
waybar & 
