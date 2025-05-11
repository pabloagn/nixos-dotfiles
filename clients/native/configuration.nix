/*
* Route: /clients/native/configuration.nix
* Type: Main Native System Configuration
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, ... }:

{
  # ------------------------------------------
  # Environment variables export
  # ------------------------------------------
  environment.variables = {
  };

  imports = [
    ./system/index.nix
    ../../common/system/index.nix
  ];

  # ------------------------------------------
  # Networking
  # ------------------------------------------
  # Host name (machine name)
  networking.hostName = "nixos";

  # Enable network manager
  networking.networkmanager.enable = true;

  # ------------------------------------------
  # systemd-logind Configuration
  # ------------------------------------------
  # Configure systemd-logind behavior for lid switch
  services.logind = {
    extraConfig = ''
      HandleLidSwitch=suspend
      HandleLidSwitchExternalPower=suspend
      HandleLidSwitchDocked=ignore
    '';
  };

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Allow experimental features
  # ------------------------------------------
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # ------------------------------------------
  # Home Manager configuration
  # ------------------------------------------
  home-manager.users.pabloagn = {
    imports = [
      ./home.nix
    ];
  };

  # ------------------------------------------
  # State Version (Keep as is)
  # ------------------------------------------
  system.stateVersion = "24.11";
}
