# ---------------------------------------------------------
# Route:............/user/desktop/waybar/waybar.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.waybar = {
    enable = true;
  };

  xdg.configFile."waybar/config.jsonc" = {
		  source = ./config.jsonc;
	 };

  xdg.configFile."waybar/style.css" = {
		  source = ./style.css;
	 };
}
