# ---------------------------------------------------------
# Route:............/system/hardware/printers.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Services
  # ------------------------------------------

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
