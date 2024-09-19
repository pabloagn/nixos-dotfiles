# ---------------------------------------------------------
# Route:............/user/defaults/environment-variables.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ lib, options, config, pkgs, ... }:

with builtins;
# Provides types module
with lib;
let
#  cfg = config.home;
#  mkOpt = mkOption;

  # Manual variables. Delete after testing.
  dir = "/home/pabloagn";

in

  {
  # ------------------------------------------
  # Options
  # XDG Enforcing (no stone is left unturned)
  # ------------------------------------------
#  options = {
#    home = with types; {
      # Base
      #file       = mkOpt' attrs {} "Files to place directly in $HOME";
      #configFile = mkOpt' attrs {} "Files to place in $XDG_CONFIG_HOME";
      #dataFile   = mkOpt' attrs {} "Files to place in $XDG_DATA_HOME";
      #fakeFile   = mkOpt' attrs {} "Files to place in $XDG_FAKE_HOME";

      # Dependent
      # Declare $HOME first
      #dir        = "${config.user.home}";

      # Declare rest
      #binDir     = mkOpt "${cfg.dir}/.local/bin";
      #cacheDir   = mkOpt "${cfg.dir}/.cache";
      #configDir  = mkOpt "${cfg.dir}/.config";
      #dataDir    = mkOpt "${cfg.dir}/.local/share";
      #stateDir   = mkOpt "${cfg.dir}/.local/state";

      #binDir     = mkOpt "${dir}/.local/bin";
      #cacheDir   = mkOpt "${dir}/.cache";
      #configDir  = mkOpt "${dir}/.config";
      #dataDir    = mkOpt "${dir}/.local/share";
      #stateDir   = mkOpt "${dir}/.local/state";

#    };
#  };

  # ------------------------------------------
  # Config
  # ------------------------------------------
  config = {
    home.sessionVariables = let
      # Declare dotfiles var so as not to repeat cfg.dir over and over again.
      #dotfiles = "${cfg.dir}/.dotfiles";
      dotfiles = "${dir}/.dotfiles";
      binDir     = "${dir}/.local/bin";
      cacheDir   = "${dir}/.cache";
      configDir  = "${dir}/.config";
      dataDir    = "${dir}/.local/share";
      stateDir   = "${dir}/.local/state";
    in 
    {


      # XDG Vars to Session Vars 
      # ------------------------------------------
      XDG_BIN_HOME    = binDir;
      XDG_CACHE_HOME  = cacheDir;
      XDG_CONFIG_HOME = configDir;
      XDG_DATA_HOME   = dataDir;
      XDG_STATE_HOME  = stateDir;

      # Conventional Session Vars 
      # ------------------------------------------
      BROWSER           = "firefox";
      EDITOR            = "nvim";
      HISTFILE          = "/home/pabloagn/.cache/zsh/.zsh_history";
      IMAGE             = "feh";
      NODE_REPL_HISTORY = "/home/pabloagn/.cache/node/.node_repl_history";
      PYTHON_HISTORY    = "/home/pabloagn/.cache/python/.python_history";
      SUDO_EDITOR       = "nvim";
      TERMINAL          = "kitty";
      VIDEO             = "mpv";
      VISUAL            = "nvim";
      WM                = "Hyprland";

      # ZSH
      # ------------------------------------------
      #ZDOTDIR = "$HOME/.config/zsh";
      LESSHISTFILE = "/dev/null";

      # Options for vi mode
      KEYTIMEOUT = 1;

      # NixOS & dots
      # ------------------------------------------
      DOTFILES      = dotfiles;
      DOTSCRIPTS    = "${dotfiles}/scripts";
      DOTSYS        = "${dotfiles}/system";
      DOTUSER       = "${dotfiles}/user";

      # Home & Config
      DOTHOME       = "${dotfiles}/home.nix";
      DOTCONFIG     = "${dotfiles}/configuration.nix";

      # Shell aliases (used for zsh, bash & any other shell installed)
      DOTALIASES    = "${dotfiles}/user/term/aliases.nix";

      # Environment variables for user
      DOTVARS       = "${dotfiles}/user/defaults/environment-variables.nix";

      # CACHE = "${cfg.cacheDir}";
      # CONFIG = "${cfg.configDir}";
      };

    # PATH (We can add multiple entries)
    # ------------------------------------------
    #home.sessionPath = let vars = config.home.sessionVariables;
    #in
    #[
      # Using string interpolation to save us trouble.
      #"${vars.DOTSCRIPTS}"
      #"${vars.CONFIG}"
    #];

    # Configure XDG Base Directory
    # ------------------------------------------
    #xdg.enable = true;
    #xdg.cacheHome  = cacheDir;
    #xdg.configHome = configDir;
    #xdg.dataHome   = dataDir;
    #xdg.stateHome  = stateDir;

    # Configure file placements
    # ------------------------------------------
    #home.file = file;
    #xdg.configFile = configFile;
    #xdg.dataFile = dataFile;
  };
}
