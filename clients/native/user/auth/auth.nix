# ---------------------------------------------------------
# Route:............/hosts/native/user/auth/auth.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    age
    # pass Keychain & GnuPG: Required by Proton Bridge
    pass
    gnupg
    # keychain
    gnome-keyring
    sops
  ];
  # ------------------------------------------
  # SSH Per-Host Settings using matchBlocks
  # https://rycee.gitlab.io/home-manager/options.xhtml#opt-programs.ssh.matchBlocks
  # ------------------------------------------
  programs.ssh.matchBlocks = {
    "github.com" = {
      user = "git";
      hostname = "github.com";
      identityFile = "$HOME/.ssh/nixos";
    };
  };

  # ------------------------------------------
  # Git settings
  # ------------------------------------------
}
