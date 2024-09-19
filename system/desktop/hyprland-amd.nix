# ---------------------------------------------------------
# Route:............/system/desktop/hyprland-amd.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Module Imports
  imports = [
  # Base hyprland config
    ./hyprland-base.nix
  ];

  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
  ];

  # Options
  # ------------------------------------------
  programs.hyprland = {
    #nvidiaPatches = true;
    xwayland.enable = true;
    };

  environment.sessionVariables = {
    # For invisible cursors
    WLR_NO_HARDWARE_CURSORS = "1";

    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
    };

  # OpenGL options
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;

    # Most wayland compositors need this for nvidia graphics
    # Skip if using AMD
    #nvidia.modesetting.enable = true;
    };
}

