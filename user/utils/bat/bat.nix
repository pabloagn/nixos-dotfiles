# ----------------------------------------------------------------------
# Route:...........././user/utils/bat/bat.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    bat
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.bat = {
    enable = true;
    themes = {
      catppuccin-mocha = {
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "bat";
          rev = "ba4d16880d63e656acced2b7d4e034e4a93f74b1";
          sha256 = "sha256-6WVKQErGdaqb++oaXnY3i6/GuH2FhTgK0v4TN4Y0Wbw=";
        };
        file = "/Catppuccin-mocha.tmTheme";
      };
    };
    config = {
      style = "plain";
      theme = "catppuccin-mocha";
    };
  };

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
}
