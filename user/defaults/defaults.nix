# ---------------------------------------------------------
# Route:............/user/defaults/defaults.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # MIME Options
  # ------------------------------------------
  # https://discourse.nixos.org/t/set-default-application-for-mime-type-with-home-manager/17190/2
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = ["okular.desktop"];
      "application/x-extension-htm" = ["firefox.desktop"];
      "application/x-extension-html" = ["firefox.desktop"];
      "application/x-extension-shtml" = ["firefox.desktop"];
      "application/x-extension-xht" = ["firefox.desktop"];
      "application/x-extension-xhtml" = ["firefox.desktop"];
      "application/x-zerosize" = ["nvim.desktop"];
      "application/xhtml+xml" = ["firefox.desktop"];
      "audio/flac" = ["clementine.desktop"];
      "audio/mp3" = ["clementine.desktop"];
      "audio/mp4" = ["clementine.desktop"];
      "audio/mpeg" = ["clementine.desktop"]; # mp3
      "audio/ogg" = ["clementine.desktop"];
      "audio/x-m4a" = ["clementine.desktop"]; # m4a
      "audio/x-wav" = ["clementine.desktop"]; # wav
      "image/bmp" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/gif" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/jpeg" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/png" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/svg+xml" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/tiff" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/webp" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "text/html" = ["firefox.desktop"];
      "text/plain" = ["nvim.desktop"]; # text files
      "video/avi" = ["mpv.desktop"];
      "video/mp4" = ["mpv.desktop"];
      "video/ogg" = ["mpv.desktop"];
      "video/webm" = ["mpv.desktop"];
      "video/x-matroska" = ["mpv.desktop"]; # mkv
      "video/x-msvideo" = ["mpv.desktop"]; # avi
      "x-scheme-handler/chrome" = ["firefox.desktop"];
      "x-scheme-handler/http" = ["firefox.desktop"];
      "x-scheme-handler/https" = ["firefox.desktop"];
    };
  };
}
