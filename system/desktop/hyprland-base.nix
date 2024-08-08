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

    # Cursor
    hyprcursor

    # App launcher
    rofi-wayland
    #wofi
    #tofi

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

}
