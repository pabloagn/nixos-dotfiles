# ------------------------------------------
# user/term/lf/lf.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    wezterm
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.lf = {
    enable = true;
    extraConfig = ''
    builtins.readFile ./lfrc;
    builtins.readFile ./colors;
    '';
  };

  xdg.configFile."lf/icons" = {
    enable = config.programs.lf.enable;
		  source = ./icons;
	 };
}
