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

    # Interpreters
    # -----------------------------
    gcc
    gnumake
    go
    julia-lts
    nodejs_20
    python310
    rustc
    rustup
    scala_3
    texlive.combined.scheme-full

    # Nix
    # -----------------------------
    cachix
    nil
    nix-info
    nixpkgs-fmt
    sbomnix

    # Language Servers
    # -----------------------------
    haskell-language-server
    metals
    # rust-analyzer
    go-tools
    pyright
    texlab
    lua-language-server
    taplo-cli
    nodePackages.yaml-language-server
    nodePackages.typescript-language-server
    nodePackages.typescript
    vscode-langservers-extracted
    nodePackages."@tailwindcss/language-server"
    bash-language-server
    shellcheck

    # Formatters
    # -----------------------------
    goimports-reviser
    # gofumpt
    ruff
    nodePackages.prettier
    stylua
    shfmt
  ];

}
