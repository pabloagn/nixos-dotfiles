/*
* Route: /common/user/files/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, pkgs-unstable, self, inputs, wslConfig, ... }:

{
  imports = [
    ./yazi/index.nix
  ];
}

