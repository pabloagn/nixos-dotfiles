/*
* Route: /clients/native/user/term/shells/fish/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./fish.nix
  ];
}
