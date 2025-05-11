/*
* Route: /common/user/files/yazi/yazi.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, pkgs-unstable, inputs, self, wslConfig, ... }:

# Define the markdown preview script using writeShellScript
let
  markdownPreviewScript = pkgs.writeShellScript "yazi-markdown-preview" ''
    #!${pkgs.runtimeShell}

    # Dependencies are made available in PATH by the Nix wrapper
    # Check commands just in case
    if ! command -v pandoc >/dev/null 2>&1; then
      echo "Preview Error: 'pandoc' command not found in wrapper environment." >&2
      exit 1
    fi
    if ! command -v w3m >/dev/null 2>&1; then
      echo "Preview Error: 'w3m' command not found in wrapper environment." >&2
      exit 1
    fi

    FILE_PATH="$1"
    # Yazi sets $YACOL (pane width), default to 80 if unset
    WIDTH="''${YACOL:-80}" # Use ''${} to escape Nix interpolation

    # Use full paths for extra robustness within the script, though PATH should work
    (${pkgs.pandoc}/bin/pandoc -f markdown -t html --standalone "$FILE_PATH" 2>&1 | ${pkgs.w3m}/bin/w3m -T text/html -dump -cols "$WIDTH")

    # Exit with the status code of the last command (w3m)
    exit $?
  '';
in
{
  home.packages = with pkgs; [
    yazi # From stable pkgs defined in flake
    #pkgs-unstable.yazi # Or explicitly use unstable if needed


  ];

  # ------------------------------------------
  # Configuration Files
  # ------------------------------------------
  # Manage yazi main config file
  xdg.configFile."yazi/yazi.toml" = {
    source = ./yazi.toml; # Ensure this source file HAS the markdown rule added!
    # Remember to include { mime = "text/markdown", run = "markdown" }
    # in the [plugin].previewers section of ./yazi.toml, before the text/* rule.
  };

  # Manage theme file
  xdg.configFile."yazi/theme.toml" = {
    source = ./theme.toml;
  };

  # Manage keymap if desired (ensure source file exists)
  # xdg.configFile."yazi/keymap.toml" = {
  #   source = ./keymap.toml;
  # };

  # Manage syntax highlighting theme if needed by previewers (like bat used internally)
  xdg.configFile."yazi/catppuccin-mocha.tmTheme" = {
    source = ../../utils/bat/catppuccin-mocha.tmTheme; # Assumes this path is correct
  };

  # ------------------------------------------
  # Plugins Directory and Scripts
  # ------------------------------------------
  # Ensure the plugins directory exists declaratively
  xdg.configFile."yazi/plugins" = {
    # Using source = ./. here is a simple way if the source dir only contains plugins
    # Otherwise, create an empty directory if needed:
    # source = pkgs.runCommand "yazi-plugins-dir" {} '' mkdir -p $out '';
    # If you have other files like get_plugins.sh in ./yazi/ that you DON'T want copied:
    source = (pkgs.runCommand "yazi-plugins-dir-empty" {} ''mkdir -p $out'');
    recursive = true; # Needed if creating the directory itself
  };

  # Link the markdown preview script into the plugins directory
  xdg.configFile."yazi/plugins/markdown.sh" = {
    source = markdownPreviewScript; # Points to the script created by writeShellScript
    executable = true; # Make the symlink (or file) executable
  };

}
