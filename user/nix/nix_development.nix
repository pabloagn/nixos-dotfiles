# ----------------------------------------------------------------------
# Route:...........././user/nix/nix_development.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    cachix
    nil
    nix-info
    nixpkgs-fmt
    sbomnix
  ];
}

