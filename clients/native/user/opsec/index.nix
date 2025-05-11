/*
* Route: /clients/native/user/opsec/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./opsec.nix
  ];
}
