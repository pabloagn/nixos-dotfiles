/*
* Route:............/clients/native/user/desktop/hypr/hyprland.nix
* Type:.............Module
* Created by:.......Pablo Aguirre
*/

{ config, pkgs, lib, ... }:

let

  assetsDir = ../../../../../common/assets;
  hyprModulesDir = ./modules;

  # Destination Path -> Source Path
  # Keys are the paths relative to ~/.config
  # Values are the source paths relative to *this* nix file
  hyprConfigFiles = {
    "hypr/hyprland.conf" = ./hyprland.conf;
    "hypr/modules/monitors.conf" = ./${hyprModulesDir}/monitors.conf;
    "hypr/modules/keybinds.conf" = ./${hyprModulesDir}/keybinds.conf;
    "hypr/modules/workspaces.conf" = ./${hyprModulesDir}/workspaces.conf;
    "hypr/modules/window-rules.conf" = ./${hyprModulesDir}/window-rules.conf;
    "hypr/modules/keyboard.conf" = ./${hyprModulesDir}/keyboard.conf;
    "hypr/assets/sounds/sutter-play.ogg" = ./${assetsDir}/sounds/camera-shutter.ogg;
    "hypr/hyprpaper.conf" = ./${assetsDir}/hyprpaper/hyprpaper.conf;
  };

in

{
  home.packages = with pkgs; [
    coreutils
    gawk
  ];


  xdg.configFile = lib.mapAttrs'
    (
      destinationPath: sourcePath:
        {
          name = destinationPath;
          value = { source = sourcePath; };
        }
    )
    hyprConfigFiles;
}
