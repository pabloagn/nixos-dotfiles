# ------------------------------------------
# Beginning of Home Configuration
# ------------------------------------------

{ config, pkgs, ... }:
 
# Variable definition
let myAliases = {
  ll = "eza --icons -l -T -L=1";
  la = "ls -la";
  ".." = "cd ..";
  cat = "bat";
  htop = "btm";
  fd = "fd -Lu";
  w3m = "w3m -no-cookie -v";
  neofetch = "disfetch";
  grep = "ripgrep";
};
in
# Configuration definition
{
  # User & state
  # ------------------------------------------
  home.username = "pabloagnck";
  home.homeDirectory = "/home/pabloagnck";
  home.stateVersion = "23.11";

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [

    # Desktop, window managers, compositors & daemons
    # ------------------------------------------
    dunst
    polybar
    rofi
    sxhkd
    xclip
    # dmenu-rs
    # nitrogen

    # Editors & IDEs
    # ------------------------------------------
    neovim
    rstudio
    vscodium

    # Media
    # ------------------------------------------
    audacious
    feh # Lightweight image viewer
    inkscape
    obs-studio
    tidal-dl
    ulauncher
    vlc
    yt-dlp # Previously youtube-dl
    # shotcut
    # davinci-resolve

    # Nix development
    # ------------------------------------------
    cachix
    nil # Nix language server
    nix-info
    nixpkgs-fmt
    sbomnix

    # Productivity
    # ------------------------------------------
    _1password-gui
    filezilla 
    flameshot
    libreoffice
    obsidian
    protonvpn-cli
    protonvpn-gui
    texmaker
    virtualbox

    # Torrents
    # ------------------------------------------
    transmission

    # Utilities - Others
    # ------------------------------------------
    direnv
    nix-direnv

  ];

  home.file = {
#    ".config/nvim/init.vim".text = ''
#   '';

  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    NODE_REPL_HISTORY = "$HOME/.cache/node/.node_repl_history"
    PYTHON_HISTORY = "$HOME/.cache/python/.python_history"
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











  programs.direnv.enable = true;
  programs.direnv.enableZshIntegration = true;
  programs.direnv.nix-direnv.enable = true;















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
