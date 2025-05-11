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

  wsl = {
    enable = true;
    defaultUser = "pabloagn";
  };
  
  networking.hostName = "nixos-wsl";
  
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager.users.pabloagn = {
    imports = [ ./home.nix ];
    config = {
      my.systemHostname = config.networking.hostName;
      my.ssh.githubPersonalKeyPath = config.sops.secrets."ssh_github_personal_private_key_content".path;
      my.ssh.githubAcademicKeyPath = config.sops.secrets."ssh_github_academic_private_key_content".path;
    };
  };

  system.stateVersion = "24.11";
}
