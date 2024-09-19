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
    foot
  ];


  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  # xdg.configFile."kitty/kitty.conf" = {
		#   source = ./kitty.conf;
	 # };

  # xdg.configFile."kitty/themes/catppuccin-mocha.conf" = {
		#   source = ./themes/catppuccin-mocha.conf;
	 # };

}
