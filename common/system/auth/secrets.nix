# File: /common/system/secrets.nix
# Type: Common NixOS System Module for SOPS secret definitions

{ lib, config, pkgs, inputs, ... }:

{
  imports = [
    inputs.sops-nix.nixosModules.sops # Import the sops-nix NixOS module
  ];

  # sops-nix global settings (can also be per-secret)
  sops.defaultSopsFile = ../../secrets/secrets.yaml; # Path to your main SOPS-encrypted YAML file
                                                   # Adjust if secrets.yaml is elsewhere.
  sops.age.keyFile = "/var/lib/sops-nix/key.txt"; # Path to the age private key on the target system
  # Or if using GPG, configure sops.gnupg.*
  # Or if using host SSH key for decryption:
  # sops.age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];

  sops.secrets."ssh_id_ed25519_github_pabloagn" = {
    # This key "ssh_id_ed25519_github_pabloagn" must exist in your secrets.yaml
    # and its value should be the encrypted content of your SSH private key.
    #
    # Alternatively, if you encrypted the key file directly (e.g., secrets/ssh/id_ed25519_pabloagn_private.enc):
    # sopsFile = ../../secrets/ssh/id_ed25519_pabloagn_private.enc; # Path to the individually encrypted file
    #
    # For this example, we assume "ssh_id_ed25519_github_pabloagn" is a key in secrets.yaml

    owner = config.users.users.pabloagn.name;  # Set owner to user pabloagn
    group = config.users.users.pabloagn.group; # Set group to pabloagn's primary group
    mode = "0400"; # Private key should only be readable by the owner
    # path = "/desired/path/on/system/id_ed25519"; # Optional: if you want it at a specific fixed path
                                                 # Default is /run/secrets/ssh_id_ed25519_github_pabloagn
    neededForUsers = true; # Allows Home Manager to potentially reference its path or content if needed,
                           # and ensures it's decrypted even if no system service directly requires it.
  };

  # Example: If you had another secret for a password
  # sops.secrets."some_service_password" = {
  #   owner = "root";
  #   group = "root";
  #   mode = "0400";
  # };
}
