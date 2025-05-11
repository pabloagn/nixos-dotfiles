/*
* Route: /common/user/utils/utils.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    acpi
    bc
    binutils
    bottom
    cowsay
    desktop-file-utils
    direnv
    disfetch
    dmidecode
    entr
    eza
    fd
    ffmpegthumbnailer
    file
    fontforge
    git
    gnutls
    hwinfo
    imagemagick
    ipfetch
    jq
    less
    lsof
    nix-direnv
    ollama
    onefetch
    pandoc
    pciutils
    pistol
    poppler_utils
    postman
    rar
    ripgrep
    sd
    tldr
    tmux
    tree
    ueberzugpp
    unzip
    upower
    via
    w3m
    wget
    wl-clipboard
    zip
    zstd
  ];

  programs.zoxide = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };
}
