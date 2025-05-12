{
  programs.git = {
    enable = true;

    userName = "Pablo Aguirre";
    userEmail = "pabloaguirrenck@protonmail.com";

    # Optional: Set default branch name for new repositories
    extraConfig = {
      init.defaultBranch = "main";
      # You can add other global .gitconfig settings here
      # "core.editor" = config.my.preferredEditor; # Let EDITOR env var handle this or set explicitly
      # "core.pager" = "delta"; # If you install and prefer git-delta
    };

    # Optional: GPG Signing for commits
    # signing = {
    #   signByDefault = true; # Or false
    #   key = "YOUR_GPG_KEY_ID_OR_EMAIL"; # Your GPG key ID
    # };

    # Optional: Ignores file - useful for global ignores like .DS_Store, editor temp files
    # ignores = [
    #   ".DS_Store"
    #   "*.swp"
    #   "*.swo"
    #   "*~"
    #   "tags" # If you use ctags
    #   ".direnv/"
    #   "result" # Common for Nix builds
    # ];
  };

  # Example: If you use GitHub CLI (gh)
  # home.packages = with pkgs; [
  #   gh
  # ];
  # programs.gh = {
  #   enable = true;
  #   settings = {
  #     # git_protocol = "ssh"; # Prefer SSH for gh operations
  #     # editor = config.my.preferredEditor;
  #   };
  # };
}
