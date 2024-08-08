# ------------------------------------------
# user/utils/emulators.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    warp-terminal
    wezterm
    kitty
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    extraConfig = builtins.readFile ./wezterm/wezterm.lua;
  };

}
