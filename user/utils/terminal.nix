# ----------------------------------------------------------------------
# Route:...........././user/utils/terminal.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./btop/btop.nix
    ./bat/bat.nix
    ./glow/glow.nix
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
  
  # Archiving and Compression
  # ------------------------------------------
  rar
  zip
  # zstd: Doom Emacs optional dependency
  zstd

  # CLI Tools and Utilities
  # ------------------------------------------
  bc
  binutils
  cowsay
  disfetch
  dmidecode
  eza
  # fd: Doom Emacs optional dependency
  # A faster alternative to find
  fd
  git
  # gnutls: Doom Emacs optional dependency
  # For TLS connectivity
  gnutls
  hwinfo
  hyprpicker
  ipfetch
  less
  onefetch
  pandoc
  pciutils
  pistol
  ripgrep
  sd
  tree
  wget

  # Clipboard Management
  # ------------------------------------------
  wl-clipboard

  # Disk Utils
  # ------------------------------------------
  ventoy

  # Documentation
  # Simplified and community-driven man pages
  tldr

  # File Search and Management
  # ------------------------------------------
  fzf
  zoxide

  # Monitoring and System Info
  # ------------------------------------------
  # Util for fetching battery info
  acpi
  bottom
  v4l-utils

  # Multiplexing
  # ------------------------------------------
  tmux

  # Screen Capture and Scripting
  # ------------------------------------------
  entr
  grim
  slurp
  # A screenshot annotation tool
  swappy

  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  # zoxide [a better cd alternative]
  # ------------------------------------------
  programs.zoxide = {
    enable = true;
  };

  # fzf [FuzzyFinder]
  # ------------------------------------------
  programs.fzf = {
    enable = true;
  };
}
