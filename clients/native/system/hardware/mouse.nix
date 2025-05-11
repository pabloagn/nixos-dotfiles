/*
* Route: /clients/native/system/hardware/mouse.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Solaar NixOS utility for connecting Logitech devices to receivers
    solaar
  ];
}
