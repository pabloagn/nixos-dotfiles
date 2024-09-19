# ---------------------------------------------------------
# Route:............/templates/system-module.template.nix
# Type:.............Template
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # Packages
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
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
