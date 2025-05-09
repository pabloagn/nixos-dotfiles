# ---------------------------------------------------------
# Route:............/hosts/wsl/configuration.nix
# Type:.............Main
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ pkgs, config, ... }:

{
  # ------------------------------------------
  # Module Import
  # ------------------------------------------
  imports = [
    # Auto-generated configuration file (system-dependent)
    ./hardware-configuration.nix

    # Base modules (the standard packages)
    ../../common/base/nixos.nix
    
    # User-level configuration
    ../../common/users/users.nix
  ];

  # ------------------------------------------
  # WSL-specific configuration
  # ------------------------------------------
  wsl = {
    enable = true;
    defaultUser = "nixos";  # Change this to your preferred username
    nativeSystemd = true;
  };

  # ------------------------------------------
  # Host Name (Machine Name)
  # ------------------------------------------
  networking.hostName = "nixos-wsl";

  # ------------------------------------------
  # Networking
  # ------------------------------------------

  # ------------------------------------------
  # Packages
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    jq
  ];

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Allow experimental features
  # ------------------------------------------
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # ------------------------------------------
  # State Version (Keep as is)
  # ------------------------------------------
  system.stateVersion = "24.05";
}