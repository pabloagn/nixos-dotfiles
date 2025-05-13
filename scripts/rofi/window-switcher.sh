#!/usr/bin/env bash

# scripts/desktop/window-switcher.sh

# A simple Hyprland window switcher using Rofi

# Get active window information
active_window=$(hyprctl activewindow -j)
current_addr=$(echo "$active_window" | jq -r '.address')

# Get all clients (windows)
clients=$(hyprctl clients -j)

# Format window list for rofi
# Format: [workspace] window_title (app_class)
window_list=$(echo "$clients" | jq -r '.[] | 
  select(.workspace.id != -1) | 
  "\(.address)|\(.workspace.name)|\(.title)|\(.class)"' | 
  while IFS="|" read -r addr workspace title class; do
    # Mark active window with an arrow
    if [[ "$addr" == "$current_addr" ]]; then
      echo "→ [$workspace] $title ($class)|$addr"
    else
      echo "[$workspace] $title ($class)|$addr"
    fi
  done)

# Show rofi menu with window list
selected=$(echo "$window_list" | rofi -dmenu -i -p "Switch to:" -theme-str 'window {width: 65%;}' | awk -F'|' '{print $2}')

# If user selected a window, focus it
if [[ -n "$selected" ]]; then
  hyprctl dispatch focuswindow "address:$selected"
fi
