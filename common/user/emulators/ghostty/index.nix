/*
* Route: /common/user/emulators/ghostty/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./ghostty.nix
  ];
}
