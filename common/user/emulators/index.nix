/*
* Route: /common/user/emulators/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./kitty/index.nix
    # ./foot/index.nix
    ./ghostty/index.nix
    # ./wezterm/index.nix
  ];
}
