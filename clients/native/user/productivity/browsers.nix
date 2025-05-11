/*
* Route: /clients/native/user/productivity/browsers.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    pkgs-unstable.firefox-devedition
    pkgs.brave
    pkgs.w3m
    pkgs.librewolf
    pkgs.tor-browser-bundle-bin
    pkgs.qutebrowser
    pkgs.google-chrome
  ];
}
