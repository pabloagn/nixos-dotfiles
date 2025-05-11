/*
* Route: /clients/native/user/productivity/general.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    filezilla
    krusader
    xfce.thunar
    pcmanfm
    celeste
    qalculate-gtk
    kdePackages.korganizer
    evolution
    calcurse
    signal-desktop
    slack
    whatsapp-for-linux
    teams-for-linux
    telegram-desktop
    libreoffice
    okular
    onlyoffice-bin
    texmaker
    obsidian
    _1password-gui
    darling
    virtualbox
    # wine
    freerdp3
    remmina
    protonvpn-cli
    protonvpn-gui

  ];
}
