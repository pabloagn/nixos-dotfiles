/*
* Route: /common/user/emulators/kitty/kitty.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
  };

  xdg.configFile."kitty/kitty.conf" = {
    source = ./kitty.conf;
  };

  xdg.configFile."kitty/themes/catppuccin-mocha.conf" = {
		  source = ./themes/catppuccin-mocha.conf;
	 };

}
