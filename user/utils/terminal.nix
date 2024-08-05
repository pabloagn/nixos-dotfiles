# ------------------------------------------
# user/utils/terminal.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    unzip
    bc
    btop
    bottom
    git
    cowsay
    ipfetch
    lf
    eza
    disfetch
    onefetch
    wget
    ripgrep
    fd
    sd
    tree
    less
    pandoc
    hwinfo
    pciutils
  ];
}
