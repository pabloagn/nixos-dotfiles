# ------------------------------------------
# user/wm/wm.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    picom
#    nur.repos.reedrw.picom-next-ibhagwan
    bspwm
    sxhkd
    polybar
    dunst
    rofi
    xclip
  ];

  # Options
  # ------------------------------------------


  # Services
  # ------------------------------------------

  services.picom = {
    enable = true;
    settings = {
      blur =
      {
        method = "gaussian";
        size = 10;
        deviation = 5.0;
        };
      corner-radius = 8.0;
      round-borders = 1;
      };
    };
}
