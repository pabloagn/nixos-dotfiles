/*
* Route: /common/user/auth/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, inputs, lib, pkgs-unstable, self, wslConfig, ... }:

{
  imports = [
    ./ssh/index.nix
  ];
}
