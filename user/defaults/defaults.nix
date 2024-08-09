# ------------------------------------------
# user/defaults/defaults.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # MIME Options
  # ------------------------------------------
  # https://discourse.nixos.org/t/set-default-application-for-mime-type-with-home-manager/17190/2
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = ["okular.desktop"];
      "audio/mpeg" = ["clementine.desktop"]; # mp3
      "audio/mp3" = ["clementine.desktop"];
      "audio/mp4" = ["clementine.desktop"];
      "audio/ogg" = ["clementine.desktop"];
      "audio/flac" = ["clementine.desktop"];
      "audio/x-wav" = ["clementine.desktop"]; # wav
      "audio/x-m4a" = ["clementine.desktop"]; # m4a
      "video/x-msvideo" = ["mpv.desktop"]; # avi
      "video/webm" = ["mpv.desktop"];
      "video/avi" = ["mpv.desktop"];
      "video/mp4" = ["mpv.desktop"];
      "video/x-matroska" = ["mpv.desktop"]; # mkv
      "video/ogg" = ["mpv.desktop"];
      "x-scheme-handler/http" = ["firefox.desktop"];
      "x-scheme-handler/https" = ["firefox.desktop"];
      "x-scheme-handler/chrome" = ["firefox.desktop"];
      "text/html" = ["firefox.desktop"];
      "application/x-extension-htm" = ["firefox.desktop"];
      "application/x-extension-html" = ["firefox.desktop"];
      "application/x-extension-shtml" = ["firefox.desktop"];
      "application/xhtml+xml" = ["firefox.desktop"];
      "application/x-extension-xhtml" = ["firefox.desktop"];
      "application/x-extension-xht" = ["firefox.desktop"];
      "text/plain" = ["nvim.desktop"]; # text files
      "application/x-zerosize" = ["nvim.desktop"];
      "image/jpeg" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/png" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/svg+xml" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/gif" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/bmp" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/tiff" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      "image/webp" = ["userapp-feh -Zq -B Black %d-NJ0HS2.desktop"];
      };
    };

  # ------------------------------------------
  # Desktop Applications
  # ------------------------------------------
  xdg.desktopEntries.nvim = {
    name = "NeoVim";
    genericName = "Text Editor";
    exec = "kitty nvim %F";
    terminal = false;
    type = "Application";
    };
}
