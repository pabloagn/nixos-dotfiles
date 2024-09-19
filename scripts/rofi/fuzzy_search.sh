#!/usr/bin/env bash

# ---------------------------------------------------------
# Route:............/scripts/fuzzy_search.sh
# Type:.............Script
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

# ---------------------------------------------------------
# This script will open fuzzy finder for dirs & files.
# ---------------------------------------------------------

# Define search directories
SEARCH_DIRS=(
    "$HOME/Documents"
    "$HOME/projects"
    "$HOME/.config"
    "$HOME/.dotfiles"
)

# Function to get icon based on file type
get_icon() {
    case "$1" in
        *.sh)   echo "" ;;
        *.nix)  echo "" ;;
        *.txt)  echo "" ;;
        *.md)   echo "" ;;
        *)
            if [ -d "$1" ]; then
                echo ""
            else
                echo ""
            fi
            ;;
    esac
}

# Build the find command
find_cmd="find ${SEARCH_DIRS[@]} -type d -o -type f"

# Use fd if available for better performance
if command -v fd &> /dev/null; then
    find_cmd="fd . ${SEARCH_DIRS[@]}"
fi

# Run the search and display in Rofi
selected=$($find_cmd | while read -r file; do
    icon=$(get_icon "$file")
    echo -e "$icon\t$file"
done | rofi -dmenu -i -p "Search" -theme-str 'element-icon { size: 1.1em; }')

# Handle selection
if [ -n "$selected" ]; then
    file=$(echo "$selected" | cut -f2)
    if [ -d "$file" ]; then
        $TERMINAL -e bash -c "cd '$file' && exec $SHELL" &
    else
        $TERMINAL -e bash -c "$EDITOR '$file'" &
    fi
fi
