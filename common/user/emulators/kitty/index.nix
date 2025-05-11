/*
* Route: /common/user/emulators/kitty/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./kitty.nix
  ];
}
