/*
* Route: /clients/native/system/base/editors.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
  ];
}
