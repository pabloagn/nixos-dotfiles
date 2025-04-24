# ---------------------------------------------------------
# Route:............/user/desktop/desktop.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------
# ------------------------------------------
# user/desktop/desktop.nix module
# ------------------------------------------
{ config, pkgs, inputs ? {}, ... }:
{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./waybar/waybar.nix
    ./hypr/hyprland.nix
    ./hyprpaper/hyprpaper.nix
    ./fuzzel/fuzzel.nix
  ];
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    # Add rose-pine cursor package input
    (if inputs ? rose-pine-hyprcursor then inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default else null)
  ];
  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  
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
