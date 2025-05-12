/*
* Route: /common/user/defaults/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, constants, paths, ... }:

{
  imports = [
    ./options.nix
    ./env.nix
    ./git.nix
  ];
}
