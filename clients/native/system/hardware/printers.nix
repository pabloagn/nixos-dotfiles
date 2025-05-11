/*
* Route: /clients/native/system/hardware/printers.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  # Enable CUPS to print documents.
  services.printing.enable = true;
}
