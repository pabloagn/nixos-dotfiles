/*
* Route: /clients/native/system/hardware/video.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
}
