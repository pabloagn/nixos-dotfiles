/*
* Route: /clients/native/user/desktop/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, inputs ? {}, ... }:

{
  imports = [
    ./fuzzel/fuzzel.nix
    ./hypr/hyprland.nix
    ./hyprpaper/hyprpaper.nix
    ./rofi/rofi.nix
    ./waybar/waybar.nix
  ];

  home.packages = with pkgs; [
    # Add rose-pine cursor package input
    (if inputs ? rose-pine-hyprcursor then inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default else null)
  ];
  
  # Configure the cursor theme
  home.pointerCursor = {
    name = "rose-pine";
    package = if inputs ? rose-pine-hyprcursor 
              then inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default 
              else null;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
