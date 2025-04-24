# ---------------------------------------------------------
# Route:............/system/desktop/hyprland-base.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Module Imports
  # ------------------------------------------
  imports = [
  ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    hyprland
    waybar

    # Notification daemon
    dunst

    # dunst dependence
    libnotify

    # Wallpaper daemon
    #swaybg
    #wpaperd
    #mpvpaper
    #swww

    # Cursor
    hyprcursor

    # App launcher
    rofi-wayland
    fuzzel

    # Lock screen
    hyprlock

    # Idle daemon
    #hypridle

    # Attribute override (bug fixes)
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )
  ];

  # Options
  # ------------------------------------------
  programs.hyprland.enable = true;

  # We still need xserver for gdm
  services.xserver.enable = true;

  # Desktop portals
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  services.xserver.displayManager.gdm.enable = true;

  # ------------------------------------------
  # Notes
  # ------------------------------------------
  # swww might have issues with fractional scaling. Using hyprpaper for now.
}
