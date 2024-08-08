# ------------------------------------------
# user/productivity/general.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    xfce.thunar
    okular
    _1password-gui
    filezilla 
    libreoffice
    obsidian
    protonvpn-cli
    protonvpn-gui
    texmaker
    virtualbox
  ];
}

