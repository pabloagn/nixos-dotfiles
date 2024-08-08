# ------------------------------------------
# user/term/nvim/nvim.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    neovim
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  programs.nvim = {
    enable = true;
  };

  xdg.configFile."nvim/init.vim" = {
		  source = ./init.vim;
	 };
}
