/*
* Route: /clients/native/system/desktop/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, ... }:

{
  # ------------------------------------------
  # Environment variables export
  # ------------------------------------------
  environment.variables = {
  };

  # ------------------------------------------
  # Module Import
  # ------------------------------------------
  imports = [
    ./hyprland/index.nix
    ];
}
