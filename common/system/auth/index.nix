/*
* Route: /common/system/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    # ./secrets.nix
    ./auth.nix
  ];
}
