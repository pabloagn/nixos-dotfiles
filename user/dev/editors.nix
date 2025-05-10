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
    ./helix/helix.nix
    ./emacs/emacs.nix
    ./mousepad/mousepad.nix
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    rstudio
    vscode
    # vscodium
    code-cursor
  ];
}
