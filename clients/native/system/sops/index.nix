/*
* Route: /clients/native/system/sops/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.variables = {
  };

  imports = [
    ./sops.nix
  ];
}
