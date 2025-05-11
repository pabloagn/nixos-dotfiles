/*
* Route: /common/user/defaults/env.nix
* Type: Configuration
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, ... }:

{
  home.sessionVariables =
    let
      # Use the home directory configured by Home Manager itself.
      # This makes the module portable to other users/systems.
      homeDir = config.home.homeDirectory;

      # Define dotfiles var based on homeDir
      dotfiles = "${homeDir}/.dotfiles";
      binDir = "${homeDir}/.local/bin";
      cacheDir = "${homeDir}/.cache";     # Default: $XDG_CACHE_HOME or $HOME/.cache
      configDir = "${homeDir}/.config";   # Default: $XDG_CONFIG_HOME or $HOME/.config
      dataDir = "${homeDir}/.local/share"; # Default: $XDG_DATA_HOME or $HOME/.local/share
      stateDir = "${homeDir}/.local/state"; # Default: $XDG_STATE_HOME or $HOME/.local/state

      # Use the preferred editor from your custom option
      preferredEditorCmd = config.my.preferredEditor;

      # systemHostname = config.nixcfg.networking.hostName;

    in
    {
      # XDG Vars to Session Vars
      # These ensure user-specific data, config, cache, etc., follow XDG standards.
      XDG_BIN_HOME = binDir;
      XDG_CACHE_HOME = cacheDir;
      XDG_CONFIG_HOME = configDir;
      XDG_DATA_HOME = dataDir;
      XDG_STATE_HOME = stateDir;

      # Conventional Session Vars
      # Set EDITOR and VISUAL using your preferredEditor option
      EDITOR = preferredEditorCmd;
      VISUAL = preferredEditorCmd; # Often set to the same as EDITOR
      SUDO_EDITOR = preferredEditorCmd; # For `sudoedit`

      # Default applications (these can also be influenced by xdg.mimeApps)
      BROWSER = config.my.preferredBrowser;
      TERMINAL = config.my.preferredTerminal;

      # History Files (using XDG_CACHE_HOME is good practice)
      HISTFILE = "${cacheDir}/zsh/history"; # Zsh history
      NODE_REPL_HISTORY = "${cacheDir}/node/repl_history";
      PYTHON_HISTORY = "${cacheDir}/python/python_history";
      LESSHISTFILE = "/dev/null"; # Disable less history saving

      # ZSH specific (ZDOTDIR is usually set by programs.zsh.dotDir if using Home Manager's zsh module)
      # ZDOTDIR = "${configDir}/zsh"; # Only if I'm NOT using programs.zsh.enable and managing zsh files manually
      KEYTIMEOUT = "1"; # For vi mode in Zsh

      # Dotfiles Structure Variables
      DOTFILES = dotfiles;
      DOTSCRIPTS = "${dotfiles}/scripts";
      DOT_COMMON_SYSTEM = "${dotfiles}/common/system";
      DOT_COMMON_USER   = "${dotfiles}/common/user";
      #DOT_HOST_SYSTEM   = "${dotfiles}/clients/${systemHostname}/system";
      #DOT_HOST_USER     = "${dotfiles}/clients/${systemHostname}/user";

      # Paths to *your source files* within the dotfiles repo for editing aliases:
      #DOT_HOST_CONFIGURATION_SRC = "${dotfiles}/clients/${systemHostname}/configuration.nix";
      #DOT_HOST_HOME_SRC = "${dotfiles}/clients/${systemHostname}/home.nix";
      DOT_COMMON_ALIASES_SRC = "${dotfiles}/common/user/term/aliases.nix";
      DOT_COMMON_ENVVARS_SRC = "${dotfiles}/common/user/defaults/env.nix";
      DOTVARS = "${dotfiles}/common/user/defaults/env.nix";
      DOTALIASES = "${dotfiles}/common/user/term/aliases.nix";
      #DOTCONFIG = "${dotfiles}/clients/${systemHostname}/configuration.nix";
      #DOTHOME = "${dotfiles}/clients/${systemHostname}/home.nix";


      # Path to your custom desktop application logos
      DESKTOP_APPS_LOGOS = "${dotfiles}/user/desktop-apps/logos"; # Check if this path is still relevant or common
                                                                 # Original path: ${dotfiles}/user/desktop-apps/logos
                                                                 # If common, maybe: ${dotfiles}/common/assets/logos

      # Add any other common environment variables here
      # GPG_TTY = "$(tty)"; # Common for GPG agent
    };
}
