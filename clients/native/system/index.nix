/*
* Route: /clients/native/system/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    # First entry point
    ./boot/index.nix

    # Hardware-vital
    ./hardware/index.nix

    # Desktop configuration
    ./desktop/index.nix

    # Base configuration & packages
    ./base/index.nix

    # VMs & Containers
    ./virtualization/index.nix
    ];
}
