# ------------------------------------------
# user/templates/user-module.template.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
    # Insert module packages here
  ];

  # Options
  # ------------------------------------------

  # Services
  # ------------------------------------------

  # Observations
  # ------------------------------------------
  # - Use this section for writing notes regarding this file.
  # - Use bullets if possible.
}
