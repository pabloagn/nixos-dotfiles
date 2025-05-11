/*
* Route: /clients/native/system/sops/sops.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, inputs, config, ... }:

let
  # Declare sops vars
  servicename = "secrets_manager";

  # Declare secrets
  secret_email_private = "email/email_addr_private";
in
  
{
  imports =
    [
      # sops Secrets module import
      inputs.sops-nix.nixosModules.sops
    ];

  sops.defaultSopsFile = ../../secrets/secrets.yaml;
  sops.defaultSopsFormat = "yaml";
  sops.age.keyFile = "/home/pabloagnck/.config/sops/age/keys.txt";

  # Secrets definition
  # ------------------------------------------
  # Write secrets to owner
  sops.secrets.${secret_email_private} = {
    # Change owner so we don't need sudo
    # (root is always default owner)
    owner = servicename;
  };

  # systemd service definition
  # ------------------------------------------
  systemd.services.${servicename} = {
    script = ''
      '';
    serviceConfig = {
      User = servicename;
      WorkingDirectory = "/var/lib/${servicename}";
    };
  };

  # Secrets manager (user) definition
  # ------------------------------------------
  users.users.${servicename} = {
    home = "/var/lib/${servicename}";
    createHome = true;
    isSystemUser = true;
    group = servicename;
  };
  users.groups.${servicename} = { };

  # Notes
  # ------------------------------------------
  # Secret values cannot be interpolated due to security reasons.
  # Hence, we use systemd to get the values.
  # Upon building the configuration, secrets will be available under:
    # /run/secrets/secret-name
  # If owner was defined, said owner will have access to secrets without sudo.
} 
