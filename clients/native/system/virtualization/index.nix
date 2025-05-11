/*
* Route: /clients/native/system/virtualization/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

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
    ./docker/index.nix
    ];
}
