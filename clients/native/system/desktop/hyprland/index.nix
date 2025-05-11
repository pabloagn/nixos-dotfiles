/*
* Route: /clients/native/system/desktop/hyprland/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./hyprland-amd.nix
    ];
}
