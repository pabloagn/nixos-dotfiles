# ------------------------------------------
# user/productivity/mail.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    thunderbird
    protonmail-bridge
    protonmail-bridge-gui
  ];
}

