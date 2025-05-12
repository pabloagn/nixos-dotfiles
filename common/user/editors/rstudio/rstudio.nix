/*
* Route: /common/user/editors/rstudio/rstudio.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rstudio
  ];

  xdg.configFile = {
  };
}
