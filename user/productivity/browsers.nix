# ----------------------------------------------------------------------
# Route:...........././user/productivity/browsers.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    brave
    firefox-devedition
    w3m
    # Open-source version of Firefox
    # Firefox is installed system-wide
    librewolf

    # Tor browser
    tor
    tor-browser

    # Lightweight browser for special windows
    qutebrowser
  ];
}

