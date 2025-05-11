/*
* Route: /clients/native/system/base/utils.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnumake
    psmisc
    kitty
  ];

  # Services
  # ------------------------------------------
  # Thunar
  # Mount, trash, and other functionalities
  services.gvfs.enable = true;
  
  # Thumbnail support for images
  services.tumbler.enable = true;

  # Thunar plugins
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
    ];
}
