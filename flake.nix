# ---------------------------------------------------------
# Route:............/flake.nix
# Type:.............Flake
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{
  description = "NixOS configuration for native and WSL2 systems";
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
        # Native NixOS configuration
        # ------------------------------------------
        nixos = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
          ];
          specialArgs = {
            inherit pkgs-unstable inputs;
          };
        };

        # WSL2 configuration
        # ------------------------------------------
        nixos-wsl = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/wsl/configuration.nix
          ];
          specialArgs = {
            inherit pkgs-unstable inputs;
            wslConfig = true;  # Flag to conditionally enable/disable features
          };
        };
      };

      homeConfigurations = {
        # Original home-manager configuration
        # ------------------------------------------
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

        # WSL2 home-manager configuration
        # ------------------------------------------
        pabloagn-wsl = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            inherit system;
            config = {
              allowUnfree = true;
            };
          };
          modules = [ ./hosts/wsl/home.nix ];
          extraSpecialArgs = {
            inherit pkgs-unstable inputs;
            wslConfig = true;  # Flag to conditionally enable/disable features
          };
        };
      };
    };
}

# ---------------------------------------------------------
# End of file
# ---------------------------------------------------------
