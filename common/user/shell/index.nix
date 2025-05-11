/*
* Route: /common/user/shell/index.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{
  imports = [
    ./zsh/index.nix
    ./starship/index.nix
  ];
}
