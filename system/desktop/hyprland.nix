# ------------------------------------------
# system/desktop/hyprland.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Module Imports
  imports = [
  # Base hyprland config
    ./hyprland-base.nix
  ];

  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    hyprland
  ];

  # Options
  # ------------------------------------------
  programs.hyprland.enable = true;

  };
}
