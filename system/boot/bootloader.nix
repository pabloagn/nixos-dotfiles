# ------------------------------------------
# system/boot/bootloader.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = [ "rtw89" ];
}
