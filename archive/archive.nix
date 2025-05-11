# ---------------------------------------------------------
# Route:............/archive/archive.nix
# Type:.............Archive
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    # glances # top alternative written in Python
    # htop
    # lsd # An alternative to ls. Not in use anymore due to slowness
    # neofetch # Discontinued, using disfetch instead
  ];

  # Notes
  # ------------------------------------------
  # - This is the package cementery, where all packages go to die.
  # - Any unmaintained package with potential side effects to my system is dumped here.
  # - Any package that has been outperformed by other package is dumped here.
  # - Any broken / quarantined package is dumped here.
}
