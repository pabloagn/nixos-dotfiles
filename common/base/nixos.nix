# ---------------------------------------------------------
# Route:............/system/base/nixos.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Nix Development
    # ------------------------------------------
    nix-melt
    # nixfmt
    # For now use the option below instead of the option above.
    nixfmt-rfc-style
    # direnv
  ];
}
