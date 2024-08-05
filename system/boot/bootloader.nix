# ------------------------------------------
# system/boot/bootloader.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
