# ---------------------------------------------------------
# Route:............/user/desktop/fuzzel/fuzzel.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  xdg.configFile."fuzzel/fuzzel.ini" = { source = ./fuzzel.ini; };
}
