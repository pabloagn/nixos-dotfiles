/*
* Route: /common/user/shell/zsh/zsh.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, ... }:

let
  aliasesSet = import ../aliases.nix { inherit lib config pkgs; };
  functions = import ../functions.nix;
in
{
  home.packages = with pkgs; [
    zsh-history-substring-search
  ];

  programs.zsh = {
    enable = true;
#    enableLoginShell = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = aliasesSet;

    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;
      ignoreAllDups = false;
      size = 1000000000;
      save = 1000000000;
      extended = true;
      path = "${config.xdg.cacheHome}/zsh/history";
    };

    enableCompletion = true;

    initExtra = ''
      bindkey -v

      function vi-yank-xclip {
          zle vi-yank
          echo "$CUTBUFFER" | wl-copy
      }
      zle -N vi-yank-xclip
      bindkey -M vicmd 'y' vi-yank-xclip

      zstyle ':completion:*' menu select

      source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
      bindkey '^[OA' history-substring-search-up
      bindkey '^[[A' history-substring-search-up
      bindkey '^[OB' history-substring-search-down
      bindkey '^[[B' history-substring-search-down

      setopt autocd

      ${functions.yy}
    '';
  };
}
