# ---------------------------------------------------------
# Route:............/user/dev/editors.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./nvim/nvim.nix
    ./emacs/emacs.nix
    ./mousepad/mousepad.nix
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    rstudio
    vscodium
  ];
}
