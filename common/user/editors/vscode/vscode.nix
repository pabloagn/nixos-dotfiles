/*
* Route: /common/user/editors/vscode/vscode.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    # vscode-fhs
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    
    extensions = with pkgs.vscode-extensions; [
      # Nix
      jnoortheen.nix-ide
      
      # Rust
      rust-lang.rust-analyzer
      
      # Python
      ms-python.python
      
      # Go
      golang.go
      
      # TypeScript/JavaScript
      dbaeumer.vscode-eslint
      
      # Tailwind
      bradlc.vscode-tailwindcss
      
      # Formatters
      esbenp.prettier-vscode
      
      # Other useful extensions
      tamasfe.even-better-toml
      redhat.vscode-yaml
      
      # Optional but recommended
      eamodio.gitlens
      usernamehw.errorlens
    ];
    
    # User settings to link language servers
    userSettings = {
      "editor.formatOnSave" = true;
      
      # Language server configurations
      "nix.serverPath" = "nil";
      "nix.formatterPath" = "nixpkgs-fmt";
      
      "rust-analyzer.server.path" = "rust-analyzer";
      
      "python.analysis.typeCheckingMode" = "basic";
      "python.linting.enabled" = true;
      "python.linting.pylintEnabled" = false;
      "python.linting.ruffEnabled" = true;
      "python.formatting.provider" = "ruff";
      
      "go.useLanguageServer" = true;
      "go.toolsManagement.autoUpdate" = false;
      
      "typescript.tsdk" = "${pkgs.nodePackages.typescript}/lib/node_modules/typescript/lib";
      
      # Make sure VS Code finds your language servers in PATH
      "terminal.integrated.inheritEnv" = true;
    };
  };
}
