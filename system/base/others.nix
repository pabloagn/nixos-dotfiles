# ------------------------------------------
# system/base/others.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Command line utilities (including killall)
    psmisc
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
