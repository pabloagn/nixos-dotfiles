/*
* Route: /common/system/users/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./users.nix
  ];
}
