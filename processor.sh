#!/usr/bin/env bash

# ---------------------------------------------------------
# Route:............/processor.sh
# Type:.............Script
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

# ---------------------------------------------------------
# This script will process files based on predefined formatting.
# ---------------------------------------------------------

update_nix_headers() {
    local root_dir="${1:-.dotfiles}"
    local subdirs=("." "Archive" "System" "Templates" "User")
    local header="# ---------------------------------------------------------
# Route:............/templates/system-module.template.nix
# Type:.............Template
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------
"

    for subdir in "${subdirs[@]}"; do
        local target_dir="$root_dir/$subdir"
        if [ ! -d "$target_dir" ]; then
            echo "Warning: $target_dir does not exist. Skipping."
            continue
        fi

        find "$target_dir" -type f -name "*.nix" | while read -r file; do
            if ! grep -q "Created by:.......Pablo Aguirre" "$file"; then
                echo "Updating $file"
                temp_file=$(mktemp)
                echo "$header" > "$temp_file"
                cat "$file" >> "$temp_file"
                mv "$temp_file" "$file"
            else
                echo "Skipping $file (header already exists)"
            fi
        done
    done
}

# Parse command line options
while getopts ":d:" opt; do
    case $opt in
        d)
            root_dir="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# Call the function with the specified or default root directory
update_nix_headers "${root_dir:-.dotfiles}"
