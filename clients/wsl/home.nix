/*
* Route: /clients/wsl/home.nix
* Type: Main
* Created by: Pablo Aguirre
*/

{ config, pkgs, lib, inputs, constants, paths, nixOSVersion, wslConfig, ... }:

{
  imports = [
    (paths.clientsWslUser + /${constants.files.index})
    (paths.commonUser + /${constants.files.index})
  ];

  # User Options
  # ------------------------------------------
  my = {
    preferredEditor = "hx";
    preferredTerminal = "ghostty";
    preferredBrowser = "firefox";
    preferredShell = "zsh";
  };


  home.username = constants.clients.wsl.userName;
  home.homeDirectory = "/home/${constants.clients.wsl.userName}";
  home.stateVersion = nixOSVersion;

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Path
  home.sessionPath = [ "${paths.base.dotfiles}/${paths.base.scripts}" ];

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
