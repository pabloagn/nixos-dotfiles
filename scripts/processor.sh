#!/usr/bin/env bash

# ---------------------------------------------------------
# Route:............/scripts/processor.sh
# Type:.............Script
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

# ---------------------------------------------------------
# This script will process files based on predefined formatting.
# ---------------------------------------------------------

# Header Creator
# ---------------------------------------------------------
create_header() {
    local file_path="$1"
    local file_type="$2"
    local created_by="$3"
    local bar_length="$4"
    local bar_symbol="$5"
    local dots="$6"
    
    local route_label="Route:"
    local type_label="Type:"
    local created_by_label="Created by:"
    
    # Determine the maximum length of the labels
    local max_label_length=$(printf "%s\n%s\n%s" "$route_label" "$type_label" "$created_by_label" | awk '{ print length }' | sort -nr | head -1)
    
    # Calculate the padding length for each field
    local route_padding=$(( bar_length - ${#route_label} - ${#file_path} - dots ))
    local type_padding=$(( bar_length - ${#type_label} - ${#file_type} - dots ))
    local created_by_padding=$(( bar_length - ${#created_by_label} - ${#created_by} - dots ))
    
    local bar=$(printf "%${bar_length}s" | tr ' ' "$bar_symbol")
    
    # Define actual header as var
    local header="# ${bar}
# ${route_label}$(printf "%${route_padding}s" | tr ' ' '.')${file_path}
# ${type_label}$(printf "%${type_padding}s" | tr ' ' '.')${file_type}
# ${created_by_label}$(printf "%${created_by_padding}s" | tr ' ' '.')${created_by}
# ${bar}
"
    echo "$header"
}

# File Type Inferencing
# ---------------------------------------------------------
determine_file_type() {
    local file_name="$1"
    if [[ "$file_name" == "home.nix" || "$file_name" == "configuration.nix" ]]; then
        echo "Main"
    elif [[ "$file_name" == *"flake"*.nix ]]; then
        echo "Flake"
    else
        echo "Module"
    fi
}

# Header Updater
# ---------------------------------------------------------
update_nix_headers() {
    local root_dir="$1"
    local created_by="$2"
    local bar_length="$3"
    local bar_symbol="$4"
    local type_override="$5"
    local mode="$6"
    local dots="$7"

    local subdirs=("." "archive" "system" "templates" "user")

    for subdir in "${subdirs[@]}"; do
        local target_dir="$root_dir/$subdir"
        if [ ! -d "$target_dir" ]; then
            echo "Warning: $target_dir does not exist. Skipping."
            continue
        fi

        find "$target_dir" -type f -name "*.nix" | while read -r file; do
            local rel_path="${file#$root_dir/}"
           	# TODO 
						# Remove the leading './' from rel_path if it exists
            rel_path="${rel_path#./}"
            local file_type="$type_override"
            if [ -z "$file_type" ]; then
                file_type=$(determine_file_type "$(basename "$file")")
            fi

            if [[ "$mode" = "overwrite" || ! $(grep -q "Created by:......." "$file") ]]; then
                echo "Updating $file"
                local header=$(create_header "/$rel_path" "$file_type" "$created_by" "$bar_length" "$bar_symbol" "$dots")
                temp_file=$(mktemp)
                echo "$header" > "$temp_file"
                if [ "$mode" != "overwrite" ]; then
                    cat "$file" >> "$temp_file"
                else
                    tail -n +6 "$file" >> "$temp_file"
                fi
                mv "$temp_file" "$file"
            else
                echo "Skipping $file (header already exists)"
            fi
        done
    done
}

# Header Bar Replacer
# ---------------------------------------------------------
replace_header_bars() {
    local root_dir="$1"
    local bar_length="$2"
    local bar_symbol="$3"
    local subdirs=("." "archive" "system" "templates" "user")
    local bar=$(printf "%${bar_length}s" | tr ' ' "$bar_symbol")

    for subdir in "${subdirs[@]}"; do
        local target_dir="$root_dir/$subdir"
        if [ ! -d "$target_dir" ]; then
            echo "Warning: $target_dir does not exist. Skipping."
            continue
        fi
        find "$target_dir" -type f -name "*.nix" | while read -r file; do
            if grep -q "Created by:......." "$file"; then
                echo "Updating header bars in $file"
                sed -i "1s/^# .*$/# ${bar}/" "$file"
                sed -i "5s/^# .*$/# ${bar}/" "$file"
            else
                echo "Skipping $file (header not found)"
            fi
        done
    done
}

# Parse command line options
# ---------------------------------------------------------

# Defaults
mode="update"
bar_length=60
root_dir=".dotfiles"
created_by="Pablo Aguirre"
bar_symbol="-"
type_override=""
dots=10

while getopts ":d:m:n:c:s:t:x:" opt; do
    case $opt in
        d)
            root_dir="$OPTARG"
            ;;
        m)
            mode="$OPTARG"
            ;;
        n)
            bar_length="$OPTARG"
            ;;
        c)
            created_by="$OPTARG"
            ;;
        s)
            bar_symbol="$OPTARG"
            ;;
        t)
            type_override="$OPTARG"
            ;;
        x)
            dots="$OPTARG"
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

# Call the appropriate function based on the mode
if [ "$mode" = "update" ] || [ "$mode" = "overwrite" ]; then
    update_nix_headers "$root_dir" "$created_by" "$bar_length" "$bar_symbol" "$type_override" "$mode" "$dots"
elif [ "$mode" = "replace_bars" ]; then
    replace_header_bars "$root_dir" "$bar_length" "$bar_symbol"
else
    echo "Invalid mode. Use 'update', 'replace_bars', or 'overwrite'."
    exit 1
fi

