/*
* Route: /common/user/utils/btop/btop.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    btop
  ];

  programs.btop = {
    enable = true;
  };

  xdg.configFile."btop/btop.conf" = {
		  source = ./btop.conf;
	 };

  xdg.configFile."btop/themes/catppuccin-mocha.theme" = {
		  source = ./themes/catppuccin-mocha.theme;
	 };

}
