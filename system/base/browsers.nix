# ---------------------------------------------------------
# Route:............/system/base/browsers.nix 
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Requirements
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Insert packages here
  ];

  # Options
  # ------------------------------------------
  programs.firefox = {
    enable = true;
  };
}
