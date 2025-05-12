/*
* Route: /common/user/editors/rstudio/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./rstudio.nix
  ];
}
