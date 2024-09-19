# ---------------------------------------------------------
# Route:............/system/hardware/wifi.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Options
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
  
}
