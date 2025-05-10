# ----------------------------------------------------------------------
# Route:............/user/term/helix/helix.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    helix
  ];

  # ------------------------------------------
  # Configuration
  # ------------------------------------------
  xdg.configFile = {
    "helix/config.toml" = { source = ./config.toml; };
    "helix/languages.toml" = { source = ./languages.toml; };
    "helix/themes/tokyonight.toml" = { source = ./themes/tokyonight.toml; };
  }; 

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
}
