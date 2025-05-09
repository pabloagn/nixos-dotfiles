# ---------------------------------------------------------
# Route:............/hosts/wsl/home.nix
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
    ../../user/defaults/environment-variables.nix
    # Defaults (includes MIME types, default apps & environment variables)
    ../../user/defaults/defaults.nix

    # Authentication & secrets
    ../../user/auth/auth.nix

    # Dev (most relevant for WSL)
    ../../user/dev/databases.nix
    ../../user/dev/editors.nix
    ../../user/dev/interpreters.nix
    ../../user/dev/others.nix

    # Productivity (CLI-focused)
    ../../user/productivity/general.nix

    # Nix
    ../../user/nix/nix_development.nix

    # Term (essential for WSL)
    ../../user/term/shells.nix

    # Utils
    ../../user/utils/others.nix
    ../../user/utils/terminal.nix
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
  home.file = { };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
# ------------------------------------------
# End of Home Configuration
# ------------------------------------------
