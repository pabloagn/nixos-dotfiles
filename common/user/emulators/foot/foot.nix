/*
* Route: /common/user/emulators/foot/foot.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    foot
  ];
}
