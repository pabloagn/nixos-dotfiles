/*
* Route: /clients/native/user/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs }:

{
  imports = [
    ./defaults/index.nix
    ./auth/index.nix
    ./desktop/index.nix
    ./dev/index.nix
    ./media/index.nix
    ./opsec/index.nix
    ./productivity/index.nix
    ./term/index.nix
    ./utils/index.nix
  ];
}
