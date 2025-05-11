/*
* Route: /clients/native/system/base/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{ config, pkgs, ... }:

{
  imports = [
    ./browsers.nix
    ./editors.nix
    ./utils.nix
    ];
}
