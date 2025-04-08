# ----------------------------------------------------------------------
# Route:...........././user/term/zsh/zsh.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

# ------------------------------------------
# Submodule Imports
# ------------------------------------------
let 
  aliases = import ../aliases.nix;
  functions = import ../functions.nix;
in
{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    # Enable history search with substrings
    zsh-history-substring-search
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  # zsh
  # ------------------------------------------
  programs.zsh = {
    enable = true;
    autosuggestion = {
      enable = true;
    };

    # Syntax highlighting options
    syntaxHighlighting = {
      enable = true;
      # styles = {
      #   "alias" = "fg=bold";
      # };
    };
    
    # Aliases sourced from external file
    shellAliases = aliases;

    # History
    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;          # Ignore consecutive duplicates
      ignoreAllDups = false;      # Don't remove older duplicates
      size = 1000000000;          # Very large history size
      save = 1000000000;          # Save all entries
      extended = true;
      path = "$HOME/.cache/zsh/.zsh_history";
    };

    enableCompletion = true;
    
    initExtra = ''
    # Enable vi mode
    bindkey -v

    # Yank to the system clipboard
    function vi-yank-xclip {
        zle vi-yank
       echo "$CUTBUFFER" | wl-copy
    }

    zle -N vi-yank-xclip
    bindkey -M vicmd 'y' vi-yank-xclip

    # Add autocomplete menu options
    zstyle ':completion:*' menu select
    # Include hidden files
    #_comp_options += (globdots)

    # Bind keys for history substring search
    source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
    bindkey '^[OA' history-substring-search-up
    bindkey '^[[A' history-substring-search-up
    bindkey '^[OB' history-substring-search-down
    bindkey '^[[B' history-substring-search-down

    # Change to auto cd (only type the dir)
    setopt autocd

    # Include custom functions
    ${functions.yy}
    '';
  };
}
