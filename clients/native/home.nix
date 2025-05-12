/*
* Route: /clients/native/home.nix
* Type: Main
* Created by: Pablo Aguirre
*/

{ config, pkgs, lib, inputs, constants, paths, nixOSVersion, ... }:

{
  imports = [
    (paths.clientsNativeUser + /${constants.files.index})
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

  home.username = constants.clients.native.userName;
  home.homeDirectory = "/home/${constants.clients.native.userName}";
  home.stateVersion = nixOSVersion;

  nixpkgs.config.allowUnfree = true;

  home.sessionPath = [ "${paths.base.dotfiles}/${paths.base.scripts}" ];

  home.file = {
  };

  programs.home-manager.enable = true;
}
