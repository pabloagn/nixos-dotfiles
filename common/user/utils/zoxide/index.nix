/*
* Route: /common/user/utils/zoxide/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    zoxide
  ];
}
