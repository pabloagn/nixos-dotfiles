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
    go
    haskell-language-server
    julia-lts
    metals
    nodejs_20
    python310
    python310Packages.pip
    python310Packages.jupyter
    python310Packages.notebook
    python310Packages.ipykernel
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
