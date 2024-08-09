# ------------------------------------------
# system/base/editors.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    vim
    #neovim
  ];
}
