# ---------------------------------------------------------
# Route:............/user/dev/interpreters.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
    # beancount: An accounting language for financial entries
    beancount
    # fava: Web interface for beancount
    fava
    go
    haskell-language-server
    julia-lts
    metals
    nodejs_20
    python39
    #python310
    #python311
    R
    rustc
    rustup
    scala_3
    # The full TexLive scheme (~5GB)
    texlive.combined.scheme-full
    # The medium TexLive scheme (<5GB)
    # texlive.combined.scheme-medium
    #zulu
  ];

}
