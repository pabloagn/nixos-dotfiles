# ----------------------------------------------------------------------
# Route: /common/user/emulators/ghostty/ghostty.nix
# Type: Module
# Created by: Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];

  xdg.configFile."ghostty/config" = {
		  source = ./config;
	 };
}
