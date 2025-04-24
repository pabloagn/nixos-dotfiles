# ---------------------------------------------------------
# Route:............/flake.nix
# Type:.............Flake
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{
  description = "NixOS configuration for sanctum-nixos system";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11"; # Using 24.11
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-24.11"; # Using 24.11 HM
    sops-nix.url = "github:Mic92/sops-nix";

    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    # Add Hyprland as an input for hyprlang
    hyprland.url = "github:hyprwm/hyprland";
    
    # Add rose-pine-hyprcursor
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
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
            ./configuration.nix
        ];
        specialArgs = {
          inherit pkgs-unstable inputs;
        };
      };
    };
    homeConfigurations = {
      pabloagn = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
          };
        };
        modules = [ ./home.nix ];
        extraSpecialArgs = {
          inherit pkgs-unstable inputs;
        };
      };
    };
  };
}
