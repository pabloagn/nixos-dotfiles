/*
* Route: /common/user/emulators/wezterm/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./wezterm.nix
  ];
}
