# ------------------------------------------
# system/users/users.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.pabloagnck = {
    isNormalUser = true;
    description = "Pablo Aguirre";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };
}
