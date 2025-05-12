/*
* Route: /common/user/shell/functions.nix
* Type: Utils
* Created by: Pablo Aguirre
*/

{
  # Let yazi cd into directories (shell wrapper)
  yy = ''
    function yy() {
      local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
      yazi "$@" --cwd-file="$tmp"
      if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
      fi
      rm -f -- "$tmp"
    }
  '';

  # A better tree
  etree = ''
    function etree() {
      local level="''${1:-1}"
      eza --tree --all --level="''${level}" "''${@:2}"
    }
  '';

  # Find where a package is defined in the Nix configuration
  findpkg = ''
    function findpkg() {
      if [ -z "$1" ]; then
        echo "Usage: findpkg <package_name>"
        return 1
      fi
      # Adjust path if your config isn't in ~/.dotfiles
      local config_dir="$HOME/.dotfiles"
      if [ ! -d "$config_dir" ]; then
         echo "Error: Configuration directory '$config_dir' not found." >&2 # Send error msg to stderr
         return 1
      fi
      echo "Searching for package '$1' definitions in $config_dir..."
      # Use rg (ripgrep) for searching - make sure rg is installed
      if ! command -v rg &> /dev/null; then
          echo "Error: 'rg' (ripgrep) command not found. Please install it." >&2
          return 1
      fi
      # Search for the package name at the start of an indented line,
      # optionally preceded by 'pkgs.' or 'pkgs-unstable.'.
      # Shows filename and line number.
      rg --line-number --no-heading --color always \
         --glob '*.nix' \
         "^\s+(pkgs\.|pkgs-unstable\.)?${1}\b" \
         "$config_dir" || echo "Package '$1' not found in likely definition locations."
    }
  '';
}
