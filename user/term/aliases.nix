# ----------------------------------------------------------------------
# Route:...........././user/term/aliases.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------


# ------------------------------------------
# Aliases Definition
# ------------------------------------------
{
  # Basic bindings
  # ------------------------------------------
  vim = "nvim";
  vi = "nvim";
  v = "nvim";
  cl = "clear";
  # Migrating from lf due to the ammount of issues with previewing and config...
  lf = "yy";
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
  nf = "disfetch";
  grep = "rg";

  # Directory changing (go)
  # ------------------------------------------
  gc = "z .config";
  gd = "z $DOTFILES";
  gp = "z projects";
  gu = "z $DOTFILES/user";
  gs = "z $DOTFILES/system";

  # File opening (edit)
  # ------------------------------------------
  # Edit environment variables for user
  ev = "$EDITOR $DOTVARS";

  # Edit aliases for user
  ea = "$EDITOR $DOTALIASES";

  # Edit system
  es = "$EDITOR $DOTCONFIG";

  # Edit user
  eu = "$EDITOR $DOTHOME";

  # Fuzzy (fuzzy)
  # ------------------------------------------
  # Fuzzy File
  fzf = "fzf";

  # Fuzzy dir (requires zoxide)
  fzd = "zi";

  # Fuzzy command (requires fzf)
  fzc = "fzf-history-widget";

  # Git
  # ------------------------------------------
  gst = "git status";
  gad = "git add *";
  gpu = "git push -u origin master";
  grm = "git rm -r --cached .";

  # NixOS
  # ------------------------------------------
  # Nix Home Manager
  nh = "z $DOTFILES && home-manager switch --flake .";

  # Nix System
  ns = "z $DOTFILES && sudo nixos-rebuild switch --flake .";

  # Custom Scripts
  # ------------------------------------------
  # Scripts - Header Overwrite (overwrites headers for .nix files)
  sho = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m overwrite -n 50";

  # Scripts - Header Replace (replaces bars with arguments)
  shr = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m replace_bars -n 10 -s '-'";

  # Scripts - Header Update (update bars for .nix files)
  shu = "$DOTSCRIPTS/processor.sh -d $DOTFILES -m overwrite -n 50";

}
