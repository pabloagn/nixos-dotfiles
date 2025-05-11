/*
* Route: /common/user/auth/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./ssh/index.nix
  ];
}
