# ---------------------------------------------------------
# Route:............/user/dev/others.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    docker
    postman
    ollama
    dbeaver-bin
  ];
}
