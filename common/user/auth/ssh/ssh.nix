
{ config, pkgs, inputs, lib, pkgs-unstable, self, wslConfig, ... }:

{
  programs.ssh = {
    enable = true;
    startAgent = true;
    # addKeysToAgent = "yes";
  };
}
