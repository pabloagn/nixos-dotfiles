/*
* Route: /clients/native/user/auth/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./auth.nix
  ];
}
