# ------------------------------------------
# user/dev/interpreters.nix module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    #go
    #haskell-language-server
    #julia-lts
    #nodejs_20
    python39
    #python310
    #python311
    #R
    #rustc
    #rustup
    #scala_3
    #zulu
  ];

}
