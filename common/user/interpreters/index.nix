/*
* Route:............/common/user/interpreters/index.nix
* Type:.............Module
* Created by:.......Pablo Aguirre
*/

{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Interpreters
    # -----------------------------
    gcc
    gnumake
    go
    julia-lts
    nodejs_20
    python310
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
    gopls
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
    jdk # Java Development Kit: Latest LTS version
    #jdk23 # Java Development Kit: n-1 version (@May2025)

    # Formatters
    # -----------------------------
    goimports-reviser
    # gofumpt
    ruff
    nodePackages.prettier
    stylua
    shfmt
    eslint
  ];
}
