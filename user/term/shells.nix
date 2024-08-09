# ------------------------------------------
# user/term/shells.nix module
# ------------------------------------------

{ config, pkgs, ... }:

# ------------------------------------------
# Variable definition
# ------------------------------------------
let myAliases = {

  # Basic bindings
  # ------------------------------------------
  vim = "nvim";
  vi = "nvim";
  v = "nvim";
  cl = "clear";
  # Migrating from lf due to the ammount of issues with previewing and config...
  lf = "yazi"
  # zoxide binding (a better cd)
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
  grep = "rg";

  # Directory changing
  # ------------------------------------------
  gc = "z .config";
  gd = "z .dotfiles";
  gp = "z projects";
  gu = "z .dotfiles/user";
  gs = "z .dotfiles/system";

  # Fuzzy
  # ------------------------------------------
  # Fuzzy File
  fzf = "fzf";

  # Fuzzy dir (requires zoxide)
  fzd = "zi";

  # Fuzzy command (requires fzf)
  fzc = "fzf-history-widget";

  # Git
  # ------------------------------------------
  gad = "git add *";
  gpu = "git push -u origin master";

};

in

{
  # ------------------------------------------
  # Module imports
  # ------------------------------------------
  imports = [
    ];

  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------

  # bash
  # ------------------------------------------
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
    historyFile = "$HOME/.cache/bash/.bash_history";
  };

  # zsh
  # ------------------------------------------
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = myAliases;
    history.path = "$HOME/.cache/zsh/.zsh_history";
  };
}
