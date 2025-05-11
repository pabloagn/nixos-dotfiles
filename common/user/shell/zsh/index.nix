/*
* Route: /common/user/shell/zsh/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
  ];
}
