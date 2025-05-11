/*
* Route: /clients/native/user/utils/utils.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprpicker
    grim
    slurp
    swappy
    ventoy-full
  ];
}
