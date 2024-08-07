{
  description = "NixOS configuration for sanctum-nixos system";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    # We want to make sure we have the exact same release on both nixpkgs and home-manager
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  # Here we include the required libraries and self
  outputs = {self, nixpkgs, home-manager, ...}:
    let
      lib = nixpkgs.lib;
      # Define system architecture as a variable since we'll be reusing it 
      system = "x86_64-linux";
      # We'll use the system variable. ${} will expand it
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    # System configuration
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        # Here we inherit the system variable declared in outputs 
        inherit system;
        modules = [./configuration.nix];
      };
    };
    # Home configuration
    homeConfigurations = {
      pabloagnck = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [./home.nix];
      };
    };
  };
}
