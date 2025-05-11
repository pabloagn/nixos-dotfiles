/*
* Route: /common/user/emulators/wezterm/wezterm.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    wezterm
  ];

  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };

}
