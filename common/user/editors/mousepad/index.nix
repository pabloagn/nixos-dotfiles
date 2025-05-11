/*
* Route: /clients/native/user/dev/editors/mousepad/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  environment.variables = {
  };

  imports = [
    ./mousepad.nix
  ];
}
