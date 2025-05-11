/*
* Route: /clients/native/system/boot/index.nix
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
    ./bootloader.nix
    ./services.nix
    ];
}
