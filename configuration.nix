# ---------------------------------------------------------
# Route:............/configuration.nix
# Type:.............Main
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ pkgs, config, ... }:

# Define system variables
  
{
  # ------------------------------------------
  # Environment variables export
  # ------------------------------------------
  environment.variables = {
  };

  # ------------------------------------------
  # Module Import
  # ------------------------------------------
  imports = [
    # Auto-generated configuration file (system-dependent)
    ./hardware-configuration.nix

    # Bootloader
    ./system/boot/bootloader.nix

    # Hardware
    ./system/hardware/audio.nix
    ./system/hardware/bluetooth.nix
    ./system/hardware/keyboard.nix
    ./system/hardware/mouse.nix
    ./system/hardware/printers.nix
    ./system/hardware/video.nix
    ./system/hardware/wifi.nix

    # Desktop & Windows Managers
    ./system/desktop/hyprland-amd.nix
    #./system/desktop/hyprland-intel.nix
    ./system/desktop/desktop-applications.nix
    #./system/desktop/bspwm.nix
    #./system/desktop/plasma.nix

    # Secrets service
    #./system/sops/sops.nix

    # Base modules (the standard packages)
    ./system/base/browsers.nix
    ./system/base/editors.nix
    ./system/base/nixos.nix
    ./system/base/others.nix

    # User interface
    ./system/interface/fonts.nix

    # Terminal Emulators & Shells
    ./system/term/shell.nix

    # User-level configuration
    ./system/users/users.nix
  ];

  # ------------------------------------------
  # Host Name (Machine Name)
  # ------------------------------------------
  networking.hostName = "nixos";

  # ------------------------------------------
  # Networking
  # ------------------------------------------

  # Network Proxy
  # ------------------------------------------
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Networking
  # ------------------------------------------
  networking.networkmanager.enable = true;

  # ------------------------------------------
  # Desktop Environment & Window Manager
  # ------------------------------------------


  # KDE Plasma Desktop Environment
  # ------------------------------------------
  # Enable the KDE Plasma Desktop Environment.
  #services.displayManager.sddm.enable = true;

  #services.xserver.displayManager.defaultSession = "none+bspwm";
  #services.xserver.windowManager.bspwm.enable = true;

  # ------------------------------------------
  # Packages
  # ------------------------------------------

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Allow experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05";
}

