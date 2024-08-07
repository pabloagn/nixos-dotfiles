# ------------------------------------------
# system/term/shell.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
  ];

  # Options
  # ------------------------------------------

  # Enable xserver & bspwm (xserver-based)
  services.xserver.enable = true;

  # Configure xserver
  # Configure keymap in X11
  services.xserver = {
    layout = "us,es";
    xkbOptions = "eurosign:e, compose:menu, grp:alt_space_toggle";
    xkbVariant = "";
  };
}
