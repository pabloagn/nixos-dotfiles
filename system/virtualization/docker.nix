{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  # Add your user to the docker group (replace "yourusername" with your actual username)
  users.users.pabloagn.extraGroups = [ "docker" ];
}
