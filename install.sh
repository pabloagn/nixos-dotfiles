#!/usr/bin/env bash

# ---------------------------------------------------------
# Route:............/install.sh
# Type:.............Script
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

# ---------------------------------------------------------
# INFO:
# This script installs a functional NixOS system including:
# - Home Manager
# - Flakes
# - Nix commands
# - Hyprland
# It assumes a base NixOS install is existent
# ---------------------------------------------------------

# ---------------------------------------------------------
# Function Definition
# ---------------------------------------------------------

# Script Init
# ---------------------------------------------------------
give_intro () {
	echo "Welcome"
	# TODO: Include ASCII logo
}

# Create temp vars
# ---------------------------------------------------------
create_temp_vars () {
	# User-related
	TMP_HOME = /home/$USER
	TMP_CONFIG = $TMP_HOME/.config
	TMP_DOTFILES = $TMP_HOME/.dotfiles
}

# Create required directories before we start if they do not exist
# ---------------------------------------------------------
create_dirs () {
	# Config dirs
	echo "Creating directories..."
	[ -d $TMP_CONFIG ] || mkdir $TMP_CONFIG
	[ -d $TMP_DOTFILES ] || mkdir $TMP_DOTFILES
}

# Configure GitHub credentials
# ---------------------------------------------------------
# TODO:
# 	- Install git
# 	- Configure credentials
# 	- Return credentials object

# Clone from NixOS repo
# ---------------------------------------------------------
get_system () {
	# Get system definition from GitHub repo
	echo "Fetching system definition depository..."
	cd $TMP_DOTFILES && git clone git@github.com:pabloagn/nixos-dotfiles.git
}

# Build new system generation
# ---------------------------------------------------------
build_generation () {
	# Build NixOS system generation
	# We'll need this before involving home-manager
	echo "Building system generation..."
	echo "This will take some time..."
	z $DOTFILES && sudo nixos-rebuild switch --flake .

}

# Configure home manager
# ---------------------------------------------------------
build_home () {
	# Build NixOS system generation
	# We'll need this before involving home-manager
	echo "Building system generation..."
	echo "This will take some time..."
	z $DOTFILES && sudo nixos-rebuild switch --flake .

}

# Build new home generation
# ---------------------------------------------------------
z $DOTFILES && home-manager switch --flake .

# Install Doom Emacs (Note that emacs and other packages are prerequisites so we handle home-manager first)
# ---------------------------------------------------------
git clone --depth 1 https://github.com/doomemacs/doomemacs $CONFIG/emacs
$CONFIG/emacs/bin/doom install


# ---------------------------------------------------------
# Script Execution
# ---------------------------------------------------------

# Introduction
give_intro()

# Require user confirmation
read -p "Warning: This script will vastly change your current setup. Are you sure? " -n 1 -r
# Move to newline
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Proceeding with installation. Hang tight."
	create_temp_vars()
	create_dirs()
	get_system()

	# Secondary prompt since we want to make sure the user really knows what she/he's doing.
	read -p "Warning: About to build new system generation. If you're unsure, please refer to documentation before proceeding. Do you want to continue? " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		build_generation()
	else 
		echo "Aborting..."
	fi

# We exit installation since user got cold feet.
else
	echo "Installation aborted. Au revoir."
fi
