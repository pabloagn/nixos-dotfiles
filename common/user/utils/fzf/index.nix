/*
* Route: /common/user/utils/fzf/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    fzf
  ];
}
