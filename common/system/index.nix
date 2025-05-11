/*
* Route: /common/system/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./users/index.nix
    ./base/index.nix
    ./interfaces/index.nix
    ./term/index.nix
  ];
}
