/*
* Route: /clients/native/user/dev/editors/emacs/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./emacs.nix
  ];
}