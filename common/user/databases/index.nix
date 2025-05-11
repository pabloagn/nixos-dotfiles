/*
* Route: /clients/native/user/dev/databases/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    redis
    postgresql
    dbeaver-bin
  ];
}
