/*
* Route: /clients/native/user/defaults/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Environment variables export
  # ------------------------------------------
  environment.variables = {
  };

  # ------------------------------------------
  # Module Import
  # ------------------------------------------
  imports = [
    # MIME types
    ./mime.nix

    # Desktop applications
    # ./desktop-applications.nix
  ];
}
