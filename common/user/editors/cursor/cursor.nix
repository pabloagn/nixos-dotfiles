/*
* Route: /common/user/editors/cursor/cursor.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    code-cursor
  ];
}

# NOTE
# ------------------------------------------------------------
# - Cursor rules live under the .cursor directory.
# - Cursor rules are written in YAML.
# - Cursor rules can be imported from other files.
# - Cursor rules can be imported from other directories.
# - Cursor rules can be imported from other repositories.
# - Cursor rules can be imported from other branches.
# - Cursor rules can be imported from other commits.
# ------------------------------------------------------------