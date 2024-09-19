# ---------------------------------------------------------
# Route:............/system/hardware/keyboard.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # xorg key registry
    xorg.xev
  ];

  # Options
  # ------------------------------------------
 
  # Time zone
  time.timeZone = "Europe/London";

  # Locale
  i18n.defaultLocale = "en_GB.UTF-8";

  # Additional properties
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Console Keymap
  console.keyMap = "uk";

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  # Services
  # ------------------------------------------

  # Repetition & Delay (VALIDATE)
  #services.xserver.autoRepeatDelay = 250;
  #services.xserver.autoRepeatInterval = 30;
}
