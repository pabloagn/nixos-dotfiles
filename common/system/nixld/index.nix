/*
* Route: /common/system/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./nixld.nix
  ];
}
