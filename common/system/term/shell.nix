/*
* Route: /common/system/term/shell.nix
* Type: Common Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    starship
  ];

  # Set Zsh as the default shell for the system
  environment.shells = with pkgs; [ zsh bash ]; 
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
  };
}
