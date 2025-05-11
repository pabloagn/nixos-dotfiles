/*
* Route: /clients/native/system/hardware/audio.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wireplumber
  ];

  # Enable sound
  # sound.enable = true;

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
