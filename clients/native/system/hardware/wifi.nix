/*
* Route: /clients/native/system/hardware/wifi.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];  
}
