/*
* Route: /clients/native/user/term/shells/fish/fish.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

let 
  aliases = import ../../aliases.nix;
  functions = import ../../functions.nix;
in

{
  home.packages = with pkgs; [
  ];

  programs.fish = {
    enable = true;
    shellAliases = aliases;
    historyFile = "$HOME/.cache/fish/.fish_history";
  };
}
