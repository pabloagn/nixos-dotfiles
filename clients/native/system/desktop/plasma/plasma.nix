/*
* Route: /clients/native/system/desktop/plasma.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  ];

  # Enable xserver & Plasma (xserver-based)
  services.xserver.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  };

  # Configure xserver
  # Configure keymap in X11
  services.xserver = {
    layout = "us,es";
    xkbOptions = "eurosign:e, compose:menu, grp:alt_space_toggle";
    xkbVariant = "";
  };
}
