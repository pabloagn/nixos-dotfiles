# ---------------------------------------------------------
# Route:............/user/desktop/hypr/hyprland.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Transfer
  # ------------------------------------------

  # Main config file
  # ------------------------------------------
  xdg.configFile."hypr/hyprland.conf" = {
    source = ./hyprland.conf;
  };
  
  # Modules
  # ------------------------------------------
  xdg.configFile."hypr/modules/keybinds.conf" = {
    source = ./modules/keybinds.conf;
  };

  xdg.configFile."hypr/modules/monitors.conf" = {
    source = ./modules/monitors.conf;
  };

  xdg.configFile."hypr/modules/window-rules.conf" = {
    source = ./modules/window-rules.conf;
  };

  xdg.configFile."hypr/modules/workspaces.conf" = {
    source = ./modules/workspaces.conf;
  };

  xdg.configFile."hypr/modules/keyboard.conf" = {
    source = ./modules/keyboard.conf;
  };

  # Assets
  # ------------------------------------------
  xdg.configFile."hypr/assets/sounds/sutter-play.ogg" = {
    source = ../../assets/sounds/camera-shutter.ogg;
  };
}
