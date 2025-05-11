/*
* Route: /flake.nix
* Type: Flake
* Created by: Pablo Aguirre
*/

{
  description = "Multiplatform NixOS configuration (native and WSL2)";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    sops-nix.url = "github:Mic92/sops-nix";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";
    hyprland.url = "github:hyprwm/hyprland";
    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang";
    };
  };
  outputs = {self, nixpkgs, nixpkgs-unstable, home-manager, ...}@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    in {
      nixosConfigurations = {
        # Native NixOS system configuration
        # ------------------------------------------
        nixos = lib.nixosSystem {
          inherit system;
          modules = [
            ./clients/native/configuration.nix
          ];
          specialArgs = {
            inherit pkgs-unstable inputs self;
          };
        };

        # WSL2 NixOS system configuration
        # ------------------------------------------
        nixos-wsl = lib.nixosSystem {
          inherit system;
          modules = [
            ./clients/wsl/configuration.nix
          ];
          specialArgs = {
            inherit pkgs-unstable inputs self;
            wslConfig = true;
          };
        };
      };

      homeConfigurations = {
        # Native NixOS user configuration
        # ------------------------------------------
        pabloagn = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            inherit system;
            config = {
              allowUnfree = true;
            };
          };
          modules = [ ./clients/native/home.nix ];
          extraSpecialArgs = {
            inherit pkgs-unstable inputs self;
          };
        };

        # WSL2 NixOS user configuration
        # ------------------------------------------
        pabloagn-wsl = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            inherit system;
            config = {
              allowUnfree = true;
            };
          };
          modules = [ ./clients/wsl/home.nix ];
          extraSpecialArgs = {
            inherit pkgs-unstable inputs self;
            wslConfig = true;
          };
        };
      };
    };
}
