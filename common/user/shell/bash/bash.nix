/*
* Route: /common/user/shell/bash/bash.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, ... }:

let 
  aliases = import ../aliases.nix;
  functions = import ../functions.nix;
in

{
  imports = [
    ];

  home.packages = with pkgs; [
  ];

  programs.bash = {
    enable = true;
    shellAliases = aliases;
    historyFile = "$HOME/.cache/bash/.bash_history";
  };
}
