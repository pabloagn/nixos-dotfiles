# ----------------------------------------------------------------------
# Route:...........././user/utils/glow/glow.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    glow
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
}
