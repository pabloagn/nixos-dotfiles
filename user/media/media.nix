# ------------------------------------------
# user/media/media.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    imagemagick
    mpv
    clementine
    audacious
    feh
    sxiv
    exiv2
    inkscape
    obs-studio
    tidal-dl
    ulauncher
    vlc
    yt-dlp
    transmission
  ];
}
