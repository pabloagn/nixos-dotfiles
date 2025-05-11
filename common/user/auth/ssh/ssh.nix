
{ config, pkgs, ... }:

{
  programs.ssh = {
    enable = true;        # Enables basic SSH config and utilities
    startAgent = true;    # THIS IS KEY: Tells Home Manager to start an ssh-agent for your user session
    # addKeysToAgent = "yes"; # Optional: tries to add default keys like ~/.ssh/id_rsa, id_ed25519
                              # This might require you to enter your passphrase on first add after agent starts.
  };
  # ... other configs like programs.git ...
}
