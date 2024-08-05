# ------------------------------------------
# system/hardware/keyboard.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Options
  # ------------------------------------------
 
  # Time zone
  time.timeZone = "America/Mexico_City";

  # Locale
  i18n.defaultLocale = "en_US.UTF-8";

  # Console Keymap
  console.keyMap = "us";

  # Services
  # ------------------------------------------

  # Repetition & Delay (VALIDATE)
  # services.xserver.autoRepeatDelay = 250;
  # services.xserver.autoRepeatInterval = 30;
}
