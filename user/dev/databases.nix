# ---------------------------------------------------------
# Route:............/user/dev/databases.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    redis
    postgresql
    sqlite
  ];
}