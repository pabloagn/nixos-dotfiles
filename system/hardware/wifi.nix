# ------------------------------------------
# system/hardware/bluetooth.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Options
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
  #nm-applet
  networkmanagerapplet
  ];
  
}
