/*
* Route: /clients/native/user/dev/editors/mousepad/mousepad.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xfce.mousepad
  ];

  xdg.configFile."Mousepad/settings.conf" = {
    source = ./settings.conf;
  };
}
