# ------------------------------------------
# user/productivity/general.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    _1password-gui
    filezilla 
    flameshot
    libreoffice
    obsidian
    protonvpn-cli
    protonvpn-gui
    texmaker
    virtualbox
  ];
}

