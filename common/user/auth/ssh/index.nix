/*
* Route: /common/user/auth/ssh/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, inputs, lib, pkgs-unstable, self, wslConfig, ... }:

{
  imports = [
    ./ssh.nix
  ];
}
