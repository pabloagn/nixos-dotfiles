# ------------------------------------------
# system/desktop/hyprland.nix module
# ------------------------------------------

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
  
  hardware = {
    # OpenGL
    opengl.enable = true;

    # Most wayland compositors need this
    nvidia.modesetting.enable = true;
    };
}

