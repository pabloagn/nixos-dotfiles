/*
* Route: /clients/native/user/dev/editors/helix/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./helix.nix
  ];
}