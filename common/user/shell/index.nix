/*
* Route: /common/user/shell/index.nix
* Type: Index
* Created by: Pablo Aguirre
*/

{
  imports = [
    ./zsh/index.nix
    ./starship/index.nix
  ];
}
