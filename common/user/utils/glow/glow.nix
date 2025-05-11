/*
* Route: /common/user/utils/glow/glow.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    glow
  ];
}
