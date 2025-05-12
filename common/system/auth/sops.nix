# File: /common/system/auth/sops.nix
# Type: Common NixOS System Module for SOPS secret definitions

{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];
  
  sops.defaultSopsFile = ../../../secrets/secrets.yaml;
  sops.age.keyFile = "/var/lib/sops-nix/key.txt";

  sops.secrets."ssh_github_personal" = {
    owner = config.users.users.pabloagn.name;
    mode = "0400";
  };
  # sops.secrets."ssh_github_academic" = {
    # owner = config.users.users.pabloagn.name;
    # mode = "0400";
  # };
}
