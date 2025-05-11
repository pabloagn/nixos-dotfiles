/*
* Route: /clients/native/user/productivity/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./browsers.nix
    ./general.nix
    ./mail.nix
  ];
}
