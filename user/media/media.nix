# ------------------------------------------
# user/media/media.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    audacious
    feh
    inkscape
    obs-studio
    tidal-dl
    ulauncher
    vlc
    yt-dlp
    transmission
  ];
}
