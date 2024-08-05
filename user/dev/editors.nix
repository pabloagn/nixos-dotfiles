# ------------------------------------------
# user/dev/editors.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    neovim
    rstudio
    vscodium
  ];
}
