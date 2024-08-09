# ------------------------------------------
# user/utils/terminal.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./btop/btop.nix
    ./bat/bat.nix
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    tmux
    pistol
    grim
    slurp
    wl-clipboard
    unzip
    bc
    fzf
    zoxide
    bottom
    git
    cowsay
    ipfetch
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
    entr
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  # bat [a better cat alternative]
  # ------------------------------------------
  programs.bat = {
    enable = true;
  };

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
