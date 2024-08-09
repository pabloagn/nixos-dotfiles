# ------------------------------------------
# /home.nix
# ------------------------------------------

{ config, pkgs, ... }:
 
{
  # Module imports
  # ------------------------------------------
  imports = [
    # Authentication & secrets
    ./user/auth/auth.nix

    # Defaults (includes MIME types, default apps & environment variables)
    ./user/defaults/defaults.nix
    ./user/defaults/environment_variables.nix

    # Desktop
    ./user/desktop/desktop.nix

    # Dev
    ./user/dev/databases.nix
    ./user/dev/editors.nix
    ./user/dev/languages.nix

    # Media
    ./user/media/media.nix

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
  home.username = "pabloagnck";
  home.homeDirectory = "/home/pabloagnck";
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
