/*
* Route: /common/user/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, pkgs-unstable, self, inputs, wslConfig, ... }:

{
  imports = [
    ./defaults/index.nix
    ./emulators/index.nix
    ./files/index.nix
    ./shell/index.nix
    ./utils/index.nix
  ];
}
