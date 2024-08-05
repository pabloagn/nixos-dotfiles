# ------------------------------------------
# user/productivity/browsers.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    brave
    firefox-devedition
    vivaldi
    w3m
  ];
}

