/*
* Route: /clients/native/user/term/shells/starship/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./starship.nix
  ];
}
