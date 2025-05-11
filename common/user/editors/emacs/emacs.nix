# ----------------------------------------------------------------------
# Route: /clients/native/user/dev/editors/emacs/emacs.nix
# Type: Module
# Created by: Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    emacs
  ];
}

