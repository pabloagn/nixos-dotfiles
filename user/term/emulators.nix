# ------------------------------------------
# user/term/emulators.nix module
# ------------------------------------------

{ config, pkgs, ... }:

# Configuration definition
{
  # Module imports
  # ------------------------------------------
  imports = [
    ./lf/lf.nix
    ./wezterm/wezterm.nix
    ./kitty/kitty.nix
    ./btop/btop.nix
    ./nvim/nvim.nix
    ./starship/starship.nix
    ];

  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
}
