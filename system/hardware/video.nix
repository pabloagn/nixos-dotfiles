# ---------------------------------------------------------
# Route:............/system/hardware/video.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Packages
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

  # Options
  # ------------------------------------------

  # Services
  # ------------------------------------------
}
