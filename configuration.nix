# ------------------------------------------
# configuration.nix | system configuration file
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Module Import
  # ------------------------------------------
  imports =
    [
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

      # Base modules (the standard packages)
      ./system/base/browsers.nix
      ./system/base/editors.nix
      ./system/base/nixos.nix

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
  networking.hostName = "sanctum-nixos";

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
  # Time zone, language & locale
  # ------------------------------------------


  # ------------------------------------------
  # Desktop Environment & Window Manager
  # ------------------------------------------

  # X11 Window System
  # ------------------------------------------
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us,es";
    xkbOptions = "eurosign:e, compose:menu, grp:alt_space_toggle";
    xkbVariant = "";
  };

  # KDE Plasma Desktop Environment
  # ------------------------------------------
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

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

