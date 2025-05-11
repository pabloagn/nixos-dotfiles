/*
* Route: /common/user/shell/aliases.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, wslConfig ? false, ... }:

let
  editorCmd = config.my.preferredEditor;
in

{
  # Basic bindings
  vim = editorCmd;
  vi = editorCmd;
  v = editorCmd;
  cl = "clear";
  # See functions.nix
  lf = "yy";
  cd = "z";
  ls = "eza --icons -l -T -L=1";
  l2 = "eza --icons -l -T -L=2";
  la = "eza --icons -la -T -L=1";
  ".." = "cd ..";
  cat = "bat";
  htop = "btm";
  fd = "fd -Lu";
  w3m = "w3m -no-cookie -v";
  neofetch = "disfetch";
  nf = "disfetch";
  grep = "rg";

  # Directory changing (go)
  gc = "z .config";
  gd = "z $DOTFILES";
  gp = "z projects";
  gu = "z $DOTFILES/user";
  gs = "z $DOTFILES/system";

  # File opening (edit)
  ev = "${editorCmd} $DOTVARS";
  ea = "${editorCmd} $DOTALIASES";
  es = "${editorCmd} $DOTCONFIG";
  eu = "${editorCmd} $DOTHOME";

  # Fuzzy (fuzzy)
  fzf = "fzf";
  fzd = "zi";
  fzc = "fzf-history-widget";

  # Git (git)
  gst = "git status";
  gad = "git add *";
  gpu = "git push -u origin master";
  grm = "git rm -r --cached .";

  # NixOS (nixos)
  nh = "z $DOTFILES && home-manager switch --flake .#${config.home.username}"; # Target specific user
  #ns = "z $DOTFILES && sudo nixos-rebuild switch --flake .#${config.networking.hostName}"; # Target specific host

  # VS Code (code)
  code = "code --disable-gpu 2>/dev/null";

  # Custom Scripts (scripts)
  sho = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m overwrite -n 50";
  shr = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m replace_bars -n 10 -s '-'";
  shu = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m overwrite -n 50";

  # Example conditional aliases
  # win-explorer = lib.mkIf wslConfig "explorer.exe .";
  # open-native-gui = lib.mkIf (!wslConfig) "some-native-gui-tool";
}

