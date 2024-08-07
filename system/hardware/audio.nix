# ------------------------------------------
# system/hardware/audio.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Options
  # ------------------------------------------

  # Enable sound
  sound.enable = true;

  # Pulseaudio
  hardware.pulseaudio.enable = false;

  # rtkit
  security.rtkit.enable = true;
  
  # Pipewire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

}
