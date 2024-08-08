# ------------------------------------------
# user/desktop/hypr/hyprland.nix module
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
  xdg.configFile."hypr/hyprland.conf" = {
		  source = ./hyprland.conf;
	 };
}
