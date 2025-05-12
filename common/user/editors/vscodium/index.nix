/*
* Route: /common/user/editors/vscodium/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./vscodium.nix
  ];
}
