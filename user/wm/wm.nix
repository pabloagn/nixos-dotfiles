# ------------------------------------------
# user/wm/wm.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    picom
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

  # picom compositor
  services.picom = {
    enable = true;
    blur = true;
  };



  };
}
