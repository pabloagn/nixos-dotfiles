/*
* Route: /clients/native/system/base/browsers.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  ];

  programs.firefox = {
    enable = true;
  };
}
