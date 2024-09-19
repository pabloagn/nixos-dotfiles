# ---------------------------------------------------------
# Route:............/user/dev/mousepad/mousepad.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    xfce.mousepad
  ];

  # ------------------------------------------
  # Transfer
  # ------------------------------------------

  # Main config file
  # ------------------------------------------
  xdg.configFile."Mousepad/settings.conf" = {
    source = ./settings.conf;
  };
}
