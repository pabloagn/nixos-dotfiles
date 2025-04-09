# ---------------------------------------------------------
# Route:............/system/virtualization/docker.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  # Add my user to the docker group
  users.users.pabloagn.extraGroups = [ "docker" ];
}
