# ------------------------------------------
# user/desktop/waybar/waybar.nix module
# ------------------------------------------

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
