# ----------------------------------------------------------------------
# Route:...........././user/productivity/general.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
  
  # Backup and File Transfer
  # ------------------------------------------
  filezilla

  # Browsers and File Managers
  # ------------------------------------------
  # The heavy-duty option
  krusader

  # The in-between option
  xfce.thunar

  # The efficient option
  pcmanfm
  
  # A file sync client supporting ProtonDrive
  celeste

  # Calculators
  # ------------------------------------------
  qalculate-gtk

  # Messaging & Socials
  # ------------------------------------------
  signal-desktop
  whatsapp-for-linux
  # teams
  teams-for-linux

  # Document Processing and Viewing
  # ------------------------------------------
  libreoffice
  okular
  onlyoffice-bin
  texmaker

  # Note-taking and Organization
  # ------------------------------------------
  obsidian

  # Password Management
  # ------------------------------------------
  _1password-gui

  # Virtualization
  # ------------------------------------------
  #darling
  virtualbox
  #wine

  # VPN
  # ------------------------------------------
  protonvpn-cli
  protonvpn-gui

  ];
}

