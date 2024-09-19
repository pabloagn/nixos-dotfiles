# ----------------------------------------------------------------------
# Route:............../user/term/functions.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------


# ------------------------------------------
# Functions Definition
# ------------------------------------------
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
  # Add more functions here
}
