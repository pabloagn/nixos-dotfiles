/*
* Route: /common/user/defaults/options.nix
* Type: Configuration
* Created by: Pablo Aguirre
*/

{ lib, pkgs, ... }:

let
  allowedEditors = [ "hx" "nvim" "vim" "emacs" "code" "cursor" "nano" ];
  allowedTerminals = [ "ghostty" "kitty" "wezterm" "foot" "alacritty" "gnome-terminal" "konsole" "st" ];
  allowedBrowsers = [ "firefox" "librewolf" "chromium" "google-chrome-stable" "brave" "qutebrowser" "epiphany" ];
  allowedShells = [ "zsh" "fish" "bash" "nushell" ];
in
{
  options.my = {

    preferredEditor = lib.mkOption {
      type = lib.types.enum allowedEditors;
      default = "hx"; # Default editor command
      description = "The command for the preferred text editor. Must be one of: ${lib.concatStringsSep ", " allowedEditors}.";
      example = "nvim";
    };

    preferredTerminal = lib.mkOption {
      type = lib.types.enum allowedTerminals;
      default = "ghostty"; # Default terminal emulator command
      description = "The command for the preferred terminal emulator. Must be one of: ${lib.concatStringsSep ", " allowedTerminals}.";
      example = "kitty";
    };

    preferredBrowser = lib.mkOption {
      type = lib.types.enum allowedBrowsers;
      default = "firefox"; # Default web browser command
      description = "The command for the preferred web browser. Must be one of: ${lib.concatStringsSep ", " allowedBrowsers}.";
      example = "librewolf";
    };

    preferredShell = lib.mkOption {
      # This option stores the *name* of the shell (e.g., "zsh").
      # You would then use pkgs.${config.my.preferredShell} to get the actual package.
      type = lib.types.enum allowedShells;
      default = "zsh"; # Default shell name
      description = "The name of the preferred shell. Must be one of: ${lib.concatStringsSep ", " allowedShells}. The actual package will be pkgs.<name>.";
      example = "fish";
    };
    
    systemHostname = lib.mkOption {
      type = lib.types.str;
      default = "unknown-host";
      description = "The networking.hostName of the NixOS system.";
      readOnly = true;
    };
    
    ssh = {
      githubPersonalKeyPath = lib.mkOption {
        type = lib.types.nullOr lib.types.str;
        default = null;
        description = "Absolute path to the decrypted personal GitHub SSH private key file.";
        readOnly = true;
        };

      githubAcademicKeyPath = lib.mkOption {
        type = lib.types.nullOr lib.types.str;
        default = null;
        description = "Absolute path to the decrypted academic GitHub SSH private key file.";
        readOnly = true;
        };
      };
  };
}
