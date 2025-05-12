/*
* Route: /flake.nix
* Type: Flake
* Created by: Pablo Aguirre
*/

let
  # Top level variables
  # ------------------------------------------
  nixOSVersion = "24.11";
  description = "Multiplatform NixOS configuration (native and WSL2)";
in

{

  # We're getting the project description passed
  inherit description;

  # Main inputs
  # ------------------------------------------
  inputs = {

    # Main channels
    nixpkgs.url = "nixpkgs/nixos-${nixOSVersion}";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    # WSL2
    nixos-wsl.url = "github:nix-community/nixos-wsl";
    nixos-wsl.inputs.nixpkgs.follows = "nixpkgs";

    # Home Manager
    home-manager.url = "github:nix-community/home-manager/release-${nixOSVersion}";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # SOPS
    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprland
    hyprland.url = "github:hyprwm/hyprland";

    # Rose Pine Hyprcursor
    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.hyprlang.follows = "hyprland/hyprlang"; # Yes, this is hyprlang, not hyprland
    };
  };

  # Main outputs
  # ------------------------------------------
  outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, home-manager, ... }:

    let
      # Nixpkgs vars
      # ------------------------------------------
      lib = nixpkgs.lib;

      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
      };

      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
      };

      constants = {

        dotfilesRuntimePath = "~/.dotfiles";

        baseDirs = {
          clients = "clients";
          common = "common";
          system = "system";
          user = "user";
          assets = "assets";
          scripts = "scripts";
          secrets = "secrets";
        };

        files = {
          flake = "flake.nix";
          systemConfig = "configuration.nix";
          userConfig = "home.nix";
          index = "index.nix";
        };

        clients = {
          native = {
            userID = "native";
            userName = "pabloagn";
            hostName = "nixos-native";
          };

          wsl = {
            userID = "wsl";
            userName = "pabloagn";
            hostName = "nixos-wsl";
          };
        };
      };

      paths =
        let
          base = constants.baseDirs;
          files = constants.files;
          clients = constants.clients;

        in
        rec {
          # Base dir
          root = ./.;

          # Base
          clientsBaseDir = root + /${base.clients};
          commonBaseDir = root + /${base.common};
          scriptsBaseDir = root + /${base.scripts};
          secretsBaseDir = root + /${base.secrets};

          # Common
          commonAssetsDir = commonBaseDir + /${base.assets};
          commonSystemDir = commonBaseDir + /${base.system};
          commonUserDir = commonBaseDir + /${base.user};

          # Clients - Native
          clientsNativeDir = clientsBaseDir + /${clients.native.userID};

          clientsNativeSystemDir = clientsNativeDir + /${base.system};
          clientsNativeUserDir = clientsNativeDir + /${base.user};
          clientsNativeSystemConfig = clientsNativeSystemDir + /${files.systemConfig};
          clientsNativeUserConfig = clientsNativeUserDir + /${files.userConfig};

          # Clients - WSL
          clientsWslDir = clientsBaseDir + /${clients.wsl.userID};
          
          clientsWslSystemDir = clientsWslDir + /${base.system};
          clientsWslUserDir = clientsWslDir + /${base.user};
          clientsWslSystemConfig = clientsWslSystemDir + /${files.systemConfig};
          clientsWslUserConfig = clientsWslUserDir + /${files.userConfig};
        };

      # Define the data structure describing the variations between clients
      # -------------------------------------------------------------------
      clientDefinitions = {
        native = {
          inherit (constants.clients.native) userID userName hostName;
          systemConfigPath = paths.clientsNativeSystemConfig;
          userConfigPath = paths.clientsNativeUserConfig;
          extraNixosModules = [ ];
          extraArgs = { };
        };
        wsl = {
          inherit (constants.clients.wsl) userID userName hostName;
          systemConfigPath = paths.clientsWslSystemConfig;
          userConfigPath = paths.clientsWslUserConfig;
          extraNixosModules = [ inputs.nixos-wsl.nixosModules.wsl ];
          extraArgs = {
            wslConfig = true;
            };
        };
      };

      commonSpecialArgs = {
        inherit pkgs pkgs-unstable inputs self constants paths nixOSVersion;
      };

      # System Generator
      # -------------------------------------------------
      mkNixosSystem = clientData: lib.nixosSystem {
          inherit system;
          modules = [ clientData.systemConfigPath ] ++ clientData.extraNixosModules;
          specialArgs = commonSpecialArgs // clientData.extraArgs;
        };

      # Home Manager Generator
      # -------------------------------------------------------
      mkHomeManagerConfiguration = clientData: home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ clientData.userConfigPath ];
          extraSpecialArgs = commonSpecialArgs // clientData.extraArgs;
        };

    in

    {
      # NixOS Generator
      # ----------------------------------------------
      nixosConfigurations = lib.mapAttrs'
        (clientKey: clientData: {
          name = clientData.hostName;
          value = mkNixosSystem clientData;
        })
        clientDefinitions;

      homeConfigurations = lib.mapAttrs'
        (clientKey: clientData: {
          name = "${clientData.userName}-${clientData.userID}";
          value = mkHomeManagerConfiguration clientData;
        })
        clientDefinitions;
    };
}
