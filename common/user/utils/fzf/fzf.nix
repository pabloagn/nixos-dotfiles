/*
* Route: /common/user/utils/fzf/fzf.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    fzf
  ];

  programs.fzf = {
    enable = true;
  };
}
