# ------------------------------------------
# system/hardware/bluetooth.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Options
  # ------------------------------------------

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
