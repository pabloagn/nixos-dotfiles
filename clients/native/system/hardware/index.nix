/*
* Route: /clients/native/system/hardware/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, ... }:

{
  environment.variables = {
  };

  imports = [
    # Auto-generated configuration file (system-dependent)
    # ------------------------------------------
    ./hardware-configuration.nix

    # Hardware
    # ------------------------------------------
    ./audio.nix
    ./bluetooth.nix
    ./keyboard.nix
    ./mouse.nix
    ./printers.nix
    ./video.nix
    ./wifi.nix
    ];
}
