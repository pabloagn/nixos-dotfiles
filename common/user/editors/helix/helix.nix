/*
* Route: /clients/native/user/dev/editors/helix/helix.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    helix
  ];

  xdg.configFile = {
    "helix/config.toml" = { source = ./config.toml; };
    "helix/languages.toml" = { source = ./languages.toml; };
    "helix/themes/tokyonight.toml" = { source = ./themes/tokyonight.toml; };
  };
}
