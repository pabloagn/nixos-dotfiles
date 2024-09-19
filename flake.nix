# ---------------------------------------------------------
# Route:............/flake.nix
# Type:.............Flake
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{
  description = "NixOS configuration for sanctum-nixos system";

  inputs = {
    # Include Stable
    nixpkgs.url = "nixpkgs/nixos-24.05";
    # Include unstable
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    # Home Manager Repo
    home-manager.url = "github:nix-community/home-manager/release-24.05";

    # SOPS for secrets management
    sops-nix.url = "github:Mic92/sops-nix";

    # We want to make sure we have the exact same release on both nixpkgs and home-manager
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  # Here we include the required libraries and self
  outputs = {self, nixpkgs, nixpkgs-unstable, home-manager, ...}@inputs:
    # Define variables
    let
      lib = nixpkgs.lib;

      # Define system architecture as a variable since we'll be reusing it 
      system = "x86_64-linux";

      # We'll use the system variable. ${} will expand it
      # Define pkgs variable for stable
      pkgs = nixpkgs.legacyPackages.${system};

      # Define pkgs variable for unstable
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

    in {
    # System configuration
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        # Here we inherit the system variable declared in outputs 
        inherit system;
        modules = [./configuration.nix];
        specialArgs = {
          # Include packages from unstable branch
          inherit pkgs-unstable;
          inherit inputs;
        };
      };
    };
    # Home configuration
    homeConfigurations = {
      pabloagn = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [./home.nix];
        extraSpecialArgs = {
          # include packages from unstable branch
          inherit pkgs-unstable;
        };
      };
    };
  };
}
