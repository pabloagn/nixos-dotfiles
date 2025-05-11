/*
* Route: /common/user/auth/ssh/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./ssh.nix
  ];
}
