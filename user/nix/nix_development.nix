# ------------------------------------------
# user/nix/nix_development.nix module
# ------------------------------------------

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

