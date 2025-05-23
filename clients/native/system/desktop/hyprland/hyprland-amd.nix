/*
* Route: /clients/native/system/desktop/hyprland/hyprland-amd.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./hyprland-base.nix
  ];

  environment.systemPackages = with pkgs; [
    radeontop
  ];

  programs.hyprland = {
    xwayland.enable = true;
    };

  environment.sessionVariables = {
    # For invisible cursors
    WLR_NO_HARDWARE_CURSORS = "1";

    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";

    # AMD-specific environment variables
    # NOTE: New additionfor screen artifact debugging
    AMD_VULKAN_ICD = "RADV";
    };

  # OpenGL options
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      amdvlk
      rocmPackages.clr
      # NOTE: New addition for screen artifact debugging
      libvdpau-va-gl
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      amdvlk
    ];
  };
}
