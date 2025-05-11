/*
* Route: /clients/native/user/term/shells/bash/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
  ];
}
