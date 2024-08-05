# ------------------------------------------
# user/utils/emulators.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    warp-terminal
    wezterm
  ];
}
