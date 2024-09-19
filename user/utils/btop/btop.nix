# ----------------------------------------------------------------------
# Route:...........././user/utils/btop/btop.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    btop
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.btop = {
    enable = true;
  };

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  xdg.configFile."btop/btop.conf" = {
		  source = ./btop.conf;
	 };

  xdg.configFile."btop/themes/catppuccin-mocha.theme" = {
		  source = ./themes/catppuccin-mocha.theme;
	 };

}
