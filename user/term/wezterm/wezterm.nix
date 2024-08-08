# ------------------------------------------
# user/term/wezterm/wezterm.nix module
# ------------------------------------------

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
