/*
* Route: /common/system/auth/auth.nix
* Type: Common Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  sops
  age
  ];
}
