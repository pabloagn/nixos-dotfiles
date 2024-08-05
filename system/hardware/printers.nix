# ------------------------------------------
# system/hardware/printers.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Services
  # ------------------------------------------

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
