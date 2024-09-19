# ----------------------------------------------------------------------
# Route:...........././user/media/media.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    audacity
    gimp
    imagemagick
    mpv
    clementine
    audacious
    feh
    sxiv
    exiv2
    inkscape
    obs-studio
    playerctl
    tidal-dl
    ulauncher
    vlc
    yt-dlp
    
    # Plex
    # Plex server
    plex

    # Plex amp
    plexamp

    # Torrenting
    # Transmission
    # CLI
    # transmission
    # GUI
    transmission-qt

    # QBitorrent
    # qbittorrent
    qbittorrent-qt5

    # Equalizer for PipeWire
    easyeffects
  ];
}
