/*
* Route: /common/user/editors/vscodium/vscodium.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vscodium
  ];

  xdg.configFile = {
  };
}
