# ------------------------------------------
# user/term/emulators.nix module
# ------------------------------------------

{ config, pkgs, ... }:

# Configuration definition
{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./lf/lf.nix
    ./yazi/yazi.nix
    #./wezterm/wezterm.nix
    ./kitty/kitty.nix
    ./nvim/nvim.nix
    ./starship/starship.nix
    ];

  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    ueberzugpp
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
}
