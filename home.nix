# ---------------------------------------------------------
# Route:............/home.nix
# Type:.............Main
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, inputs, ... }:
 
{
  # Module imports
  # ------------------------------------------
  imports = [

    # Defaults (Priorities)
    # ---------------------------------------------------------
    # Note: Environment variables needs to go before anything else, since we use vars for some entries.
    ./user/defaults/environment-variables.nix
    
    # Defaults (includes MIME types, default apps & environment variables)
    ./user/defaults/defaults.nix

    # Desktop Applications
    ./user/defaults/desktop-applications.nix

    # Authentication & secrets
    ./user/auth/auth.nix

    # Desktop
    ./user/desktop/desktop.nix

    # Dev
    ./user/dev/databases.nix
    ./user/dev/editors.nix
    ./user/dev/interpreters.nix
    ./user/dev/others.nix

    # Media
    ./user/media/media.nix
    
    # Opsec
    ./user/opsec/opsec.nix

    # Productivity
    ./user/productivity/browsers.nix
    ./user/productivity/general.nix
    ./user/productivity/mail.nix

    # Nix
    ./user/nix/nix_development.nix

    # Term
    ./user/term/emulators.nix
    ./user/term/shells.nix

    # Utils
    ./user/utils/others.nix
    ./user/utils/terminal.nix
  ];

  # User & state
  # ------------------------------------------
  # USER & HOME variables are inherited from configuration.nix
  home.username = "pabloagn";
  home.homeDirectory = "/home/pabloagn";
  home.stateVersion = "23.11";

  # Allow unfree packages
  # ------------------------------------------
  nixpkgs.config.allowUnfree = true;

  # Path
  home.sessionPath = [
    "~/.dotfiles"
  ];

  # ------------------------------------------
  # Home files
  # ------------------------------------------

  home.file = {
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
# ------------------------------------------
# End of Home Configuration
# ------------------------------------------
