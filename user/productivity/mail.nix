# ----------------------------------------------------------------------
# Route:...........././user/productivity/mail.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    thunderbird
    protonmail-bridge
    protonmail-bridge-gui
    protonmail-desktop
  ];
}

