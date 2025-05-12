/*
* Route:............/common/user/editors/index.nix
* Type:.............Module
* Created by:.......Pablo Aguirre
*/

{ pkgs, ... }:

{
  imports = [
    ./cursor/index.nix
    ./helix/index.nix
    ./nvim/index.nix
    ./emacs/index.nix
    ./mousepad/index.nix
    ./vscode/index.nix
    # ./vscodium/index.nix
    ./rstudio/index.nix
  ];
}

# NOTE
# ------------------------------------------------------------
# - VS Codium and VS Code clash. Do not attempt to install both.
# ------------------------------------------------------------
