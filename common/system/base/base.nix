/*
* Route: /common/system/base.nix
* Type: Common Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    nix-melt
    # nixfmt
    # For now use the option below instead of the option above.
    nixfmt-rfc-style
    direnv
    git
    vim
    wget
    curl
    jq
  ];
}
