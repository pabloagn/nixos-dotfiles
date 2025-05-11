/*
* Route: /clients/native/system/hardware/bluetooth.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    blueman
  ];

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
