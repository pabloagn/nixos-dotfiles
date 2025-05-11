/*
* Route: /clients/wsl/configuration.nix
* Type: Main
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, pkgs-unstable, self, wslConfig, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./system/index.nix
    ../../common/system/index.nix
  ];

  # ------------------------------------------
  # WSL-specific configuration
  # ------------------------------------------
  wsl = {
    enable = true;
    defaultUser = "pabloagn";
#    nativeSystemd = true;
  };

  # ------------------------------------------
  # Host Name (Machine Name)
  # ------------------------------------------
  networking.hostName = "nixos-wsl";

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
