{ config, pkgs, ... }:

{
  programs.lf = {
    enable = true;
    extraConfig = builtins.readFile ./lfrc;
  };

  xdg.configFile."lf/icons" = {
    enable = config.programs.lf.enable;
		  source = ./icons;
	 };
}
