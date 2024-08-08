# ------------------------------------------
# system/hardware/bluetooth.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    blueman
  ];

  # Options
  # ------------------------------------------

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
