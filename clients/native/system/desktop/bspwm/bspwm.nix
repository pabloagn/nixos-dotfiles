/*
* Route: /clients/native/system/desktop/bspwm.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bspwm
    sxhkd
  ];

  services.xserver = {
    enable = true;
    layout = "us,es";
    xkbOptions = "eurosign:e, compose:menu, grp:alt_space_toggle";
    xkbVariant = "";
  };
}
