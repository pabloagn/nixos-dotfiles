# ----------------------------------------------------------------------
# Route:...........././user/term/yazi/yazi.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, pkgs-unstable, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs-unstable; [
    yazi
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
#  programs.yazi = {
#    enable = true;
#  };

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  xdg.configFile."yazi/yazi.toml" = {
    source = ./yazi.toml;
  };

  xdg.configFile."yazi/theme.toml" = {
    source = ./theme.toml;
  };

  # Commenting since apparently there's a bug.
  # xdg.configFile."yazi/keymap.toml" = {
  # source = ./keymap.toml;
  # };

  xdg.configFile."yazi/catppuccin-mocha.tmTheme" = {
    source = ../../utils/bat/catppuccin-mocha.tmTheme;
  };
  
  # Plugins
  # ------------------------------------------
  # Use the dedicated shell script for this
}
