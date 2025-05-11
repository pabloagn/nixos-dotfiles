/*
* Route: /common/user/defaults/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./env.nix
    ./options.nix
  ];
}
