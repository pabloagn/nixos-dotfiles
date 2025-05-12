/*
* Route: /clients/native/configuration.nix
* Type: Main Native System Configuration
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, constants, paths, nixOSVersion, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.sops-nix.nixosModules.sops

    (paths.clientsNativeSystem + /${constants.files.index})
    (paths.commonSystem + /${constants.files.index})
  ];

  networking.hostName = constants.clients.native.hostName;
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

  home-manager.users."${constants.clients.native.userName}" = {
    imports = [
      paths.clientsNativeUserConfig
    ];
    config = {
      my.systemHostname = config.networking.hostName;
      my.ssh.githubPersonalKeyPath = config.sops.secrets."ssh_github_personal_private_key_content".path;
    };
  };

  system.stateVersion = nixOSVersion;
}
