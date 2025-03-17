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
  nixpkgs.overlays = [
    (final: prev: {
      vscode = prev.vscode.overrideAttrs (oldAttrs: {
        version = "1.97.2";
      });
    })
  ];

  home.packages = with pkgs; [
    rstudio
    vscode
    # vscodium
  ];
}
