# ----------------------------------------------------------------------
# Route:............/user/utils/others.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    direnv
    nix-direnv
    # Command line utilities for working with .desktop files
    desktop-file-utils
    # GUI for adjusting RGB lighting on Keychron keyboards
    via
    # Debugging
    lsof
  ];
}
