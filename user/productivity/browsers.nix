# ----------------------------------------------------------------------
# Route:............/user/productivity/browsers.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

# ***** CHANGE 1: Add pkgs-unstable to the function arguments *****
{ config, pkgs, pkgs-unstable, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = [
    pkgs-unstable.firefox-devedition
    pkgs.brave              # Get Brave from stable (needs allowUnfree=true in flake)
    pkgs.w3m                # Get w3m from stable
    pkgs.librewolf          # Get Librewolf from stable
    pkgs.tor-browser-bundle-bin
    pkgs.qutebrowser        # Get Qutebrowser from stable
    pkgs.google-chrome      # Get Chrome from stable (needs allowUnfree=true in flake)
  ];
}
