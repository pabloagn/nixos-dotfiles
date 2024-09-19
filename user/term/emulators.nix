# ----------------------------------------------------------------------
# Route:...........././user/term/emulators.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

# Configuration definition
{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ./foot/foot.nix
    ./lf/lf.nix
    ./yazi/yazi.nix
    ./kitty/kitty.nix
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
