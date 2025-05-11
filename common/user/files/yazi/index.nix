/*
* Route: /common/user/files/yazi/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, pkgs-unstable, self, inputs, wslConfig, ... }:

{
  imports = [
    ./yazi.nix
  ];
}
