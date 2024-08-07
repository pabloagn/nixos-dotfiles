# ------------------------------------------
# system/base/browsers.nix module
# ------------------------------------------

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
