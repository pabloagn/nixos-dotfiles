# ---------------------------------------------------------
# Route:............/system/term/shell.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Main shell
    zsh
    
    # Fast prompt
    starship
  ];

  # Options
  # ------------------------------------------

  # Set Zsh as the default shell for the system
  environment.shells = with pkgs; [ zsh bash ]; 
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
  };
}
