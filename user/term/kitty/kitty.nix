# ----------------------------------------------------------------------
# Route:...........././user/term/kitty/kitty.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    kitty
  ];


  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.kitty = {
    enable = true;
  };

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  xdg.configFile."kitty/kitty.conf" = {
		  source = ./kitty.conf;
	 };

  xdg.configFile."kitty/themes/catppuccin-mocha.conf" = {
		  source = ./themes/catppuccin-mocha.conf;
	 };

}
