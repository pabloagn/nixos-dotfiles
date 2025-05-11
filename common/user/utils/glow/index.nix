/*
* Route: /common/user/utils/glow/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    glow
  ];
}
