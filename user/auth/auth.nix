# ------------------------------------------
# user/auth/auth.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
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
}
