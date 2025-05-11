/*
* Route: /common/user/utils/zoxide/zoxide.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    zoxide
  ];

  programs.zoxide = {
    enable = true;
  };
}
