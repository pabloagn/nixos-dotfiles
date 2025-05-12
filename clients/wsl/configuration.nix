/*
* Route: /clients/wsl/configuration.nix
* Type: Main
* Created by: Pablo Aguirre
*/

{ pkgs, config, lib, inputs, constants, paths, nixOSVersion, wslConfig, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.sops-nix.nixosModules.sops

    (paths.clientsWslSystem + /${constants.files.index})
    (paths.commonSystem + /${constants.files.index})
  ];

  wsl = {
    enable = wslConfig;
    defaultUser = constants.clients.wsl.userName;
  };

  networking.hostName = constants.clients.wsl.hostName;

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager.users."${constants.clients.wsl.userName}" = {
    imports = [
      paths.clientsWslUserConfig
    ];
    config = {
      my.systemHostname = config.networking.hostName;
      my.ssh.githubPersonalKeyPath = config.sops.secrets."ssh_github_personal".path;
    };
  };

  system.stateVersion = nixOSVersion;
}
