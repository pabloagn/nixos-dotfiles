/*
* Route: /clients/native/configuration.nix
* Type: Main Native System Configuration
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.sops-nix.nixosModules.sops
    ./system/index.nix
    ../../common/system/index.nix
  ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services.logind = {
    extraConfig = ''
      HandleLidSwitch=suspend
      HandleLidSwitchExternalPower=suspend
      HandleLidSwitchDocked=ignore
    '';
  };

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager.users.pabloagn = {
    imports = [
      ./home.nix
    ];
    config = {
      my.systemHostname = config.networking.hostName;
      my.ssh.githubPersonalKeyPath = config.sops.secrets."ssh_github_personal_private_key_content".path;
      # my.ssh.githubAcademicKeyPath = config.sops.secrets."ssh_github_academic_private_key_content".path;
    };
  };

  system.stateVersion = "24.11";
}
