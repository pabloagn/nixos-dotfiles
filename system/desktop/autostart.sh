#!/usr/bin/env bash

# ------------------------------------------
# system/desktop/autostart.sh module
# ------------------------------------------

# Wallpaper
swww-daemon &
swww img ~/.dotfiles/user/assets/wallpaper-01.jpg &

# Autostart network manager
nm-applet --indicator &

# Execute bluetooth utils
blueman-applet &

# Wallpaper & menu bar
waybar & 
