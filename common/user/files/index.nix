/*
* Route: /common/user/files/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./yazi/index.nix
  ];
}
