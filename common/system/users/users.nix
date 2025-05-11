/*
* Route: /common/system/users.nix
* Type: Common Module
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  # User account. Don't forget to set a password with ‘passwd’.
  users.users.pabloagn = {
    isNormalUser = true;
    description = "Pablo Aguirre";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };
}
