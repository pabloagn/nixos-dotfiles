# ----------------------------------------------------------------------
# Route:...........././user/term/lf/lf.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------
# ------------------------------------------
# user/term/lf/lf.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    lf
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.lf = {
    enable = true;
  };

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  xdg.configFile."lf/lfrc" = {
		  source = ./lfrc;
	 };

  xdg.configFile."lf/colors" = {
		  source = ./colors;
	 };

  xdg.configFile."lf/cleaner" = {
		  source = ./cleaner;
	 };

  xdg.configFile."lf/previewer" = {
		  source = ./previewer;
	 };

  xdg.configFile."lf/icons" = {
    enable = config.programs.lf.enable;
		  source = ./icons;
	 };
}
