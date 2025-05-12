/*
* Route: /common/user/editors/vscode/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./vscode.nix
  ];
}
