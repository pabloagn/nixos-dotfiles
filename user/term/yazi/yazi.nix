# ------------------------------------------
# user/term/yazi/yazi.nix module
# ------------------------------------------

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

#  xdg.configFile."yazi/keymap.toml" = {
#    source = ./keymap.toml;
#  };

  xdg.configFile."yazi/catppuccin-mocha.tmTheme" = {
    source = ../../utils/bat/catppuccin-mocha.tmTheme;
  };

}
