# ----------------------------------------------------------------------
# Route:...........././user/term/wezterm/wezterm.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    wezterm
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };

}
