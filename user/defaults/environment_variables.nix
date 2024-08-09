# ------------------------------------------
# user/defaults/defaults.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Session Variables
  # ------------------------------------------
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    SUDO_EDITOR = "nvim";
    HISTFILE = "$HOME/.cache/zsh/.zsh_history";
    NODE_REPL_HISTORY = "$HOME/.cache/node/.node_repl_history";
    PYTHON_HISTORY = "$HOME/.cache/python/.python_history";
    TERMINAL = "kitty";
    BROWSER = "friefox";
    VIDEO = "mpv";
    IMAGE = "feh";
    WM="Hyprland";
    };
}
