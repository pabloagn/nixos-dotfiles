# ------------------------------------------
# system/desktop/hyprland.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    hyprland
    # Menu bar
    waybar
    #eww

    # Notification daemon
    dunst

    # dunst dependence
    libnotify

    # Wallpaper daemon
    #hyprpaper
    #swaybg
    #wpaperd
    #mpvpaper
    swww

    # App launcher
    rofi-wayland

    # Attribute override (bug fixes)
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )
  ];

  # Options
  # ------------------------------------------
  programs.hyprland.enable = true;

  # Desktop portals
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}
