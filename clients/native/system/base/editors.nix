/*
* Route: /clients/native/system/base/editors.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
  ];
}
