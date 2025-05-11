/*
* Route: /clients/wsl/home.nix
* Type: Main
* Created by: Pablo Aguirre
*/

{ config, pkgs, inputs, ... }:

{
  imports = [
    ./user/index.nix
    ../../common/user/index.nix
  ];

  # User Options
  # ------------------------------------------
  my = {
    preferredEditor = "hx";
    preferredTerminal = "ghostty";
    preferredBrowser = "firefox";
    preferredShell = "zsh";
  };

  # User & state
  # ------------------------------------------
  # USER & HOME variables are inherited from configuration.nix
  home.username = "pabloagn";
  home.homeDirectory = "/home/pabloagn";
  home.stateVersion = "24.11";

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Path
  home.sessionPath = [
    "~/.dotfiles"
  ];

  # ------------------------------------------
  # Home files
  # ------------------------------------------
  home.file = { };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
# ------------------------------------------
# End of Home Configuration
# ------------------------------------------
