/*
* Route: /clients/native/system/virtualization/docker/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./docker.nix
    ];
}
