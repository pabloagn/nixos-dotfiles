# ------------------------------------------
# system/hardware/video.nix Module
# ------------------------------------------

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
