# ------------------------------------------
# system/base/nixos.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Nix Development
    # ------------------------------------------
    nix-melt
    nixfmt
    # direnv
  ];
}
