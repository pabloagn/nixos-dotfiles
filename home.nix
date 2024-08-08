# ------------------------------------------
# Beginning of Home Configuration
# ------------------------------------------

{ config, pkgs, ... }:
 
# Variable definition
let myAliases = {
  vim = "nvim";
  vi = "nvim";
  v = "nvim";
  cl = "clear";
  ls = "eza --icons -l -T -L=1";
  l2 = "eza --icons -l -T -L=2";
  la = "eza --icons -la -T -L=1";
  ".." = "cd ..";
  cat = "bat";
  htop = "btm";
  fd = "fd -Lu";
  w3m = "w3m -no-cookie -v";
  neofetch = "disfetch";
  grep = "rg";
};
in
# Configuration definition
{
  # Module imports
  # ------------------------------------------
  imports = [
    # Defaults (includes MIME types, default apps & environment variables)
    ./user/defaults/defaults.nix
    ./user/defaults/environment_variables.nix

    # Dev
    ./user/dev/databases.nix
    ./user/dev/editors.nix
    ./user/dev/languages.nix

    # Media
    ./user/media/media.nix

    # Productivity
    ./user/productivity/browsers.nix
    ./user/productivity/general.nix
    ./user/productivity/mail.nix

    # Nix
    ./user/nix/nix_development.nix

    # Term
    ./user/term/emulators.nix
    ./user/term/lf.nix

    # Utils
    ./user/utils/others.nix
    ./user/utils/terminal.nix
  ];

  # User & state
  # ------------------------------------------
  home.username = "pabloagnck";
  home.homeDirectory = "/home/pabloagnck";
  home.stateVersion = "23.11";

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Path
  home.sessionPath = [
    "~/.dotfiles"
  ];

  # ------------------------------------------
  # Packages
  # ------------------------------------------

  home.file = {
#    ".config/nvim/init.vim".text = ''
#   '';

  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # ------------------------------------------
  # Program configurations [user-wide]
  # ------------------------------------------

  # WezTerm
  # ------------------------------------------
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'

      return {
        font_size = 12.0,
        dpi = 96.0,
        font = wezterm.font('Fira Code'),
        use_fancy_tab_bar = false,
        window_decorations = "INTEGRATED_BUTTONS|RESIZE",
        integrated_title_buttons = { 'Hide', 'Maximize', 'Close' },
        color_scheme = 'Sequoia Moonlight',
        harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
        check_for_updates = false,
      }
    '';
  };











#  programs.direnv.enable = true;
#  programs.direnv.enableZshIntegration = true;
#  programs.direnv.nix-direnv.enable = true;














  # bash
  # ------------------------------------------
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
    historyFile = "$HOME/.cache/bash/.bash_history";
  };

  # zsh
  # ------------------------------------------
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = myAliases;
    history.path = "$HOME/.cache/zsh/.zsh_history";
  };

  # bat [a better cat alternative]
  # ------------------------------------------
  programs.bat = {
    enable = true;
  };

  # zoxide [a better cd alternative]
  # ------------------------------------------
  programs.zoxide = {
    enable = true;
  };

  # fzf [FuzzyFinder]
  # ------------------------------------------
  programs.fzf = {
    enable = true;
  };

}

# ------------------------------------------
# End of Home Configuration
# ------------------------------------------
