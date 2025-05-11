/*
* Route: /common/user/utils/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./bat/bat.nix
    ./btop/btop.nix
    ./fzf/index.nix
    ./glow/glow.nix
    ./utils.nix
    ./zoxide/index.nix
  ];
}
