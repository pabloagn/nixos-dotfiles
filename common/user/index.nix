/*
* Route: /common/user/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, constants, paths, ... }:

{
  imports = [
    ./defaults/index.nix
    ./emulators/index.nix
    ./files/index.nix
    ./shell/index.nix
    ./utils/index.nix
    ./editors/index.nix
    ./interpreters/index.nix
    ./containers/index.nix
  ];
}
