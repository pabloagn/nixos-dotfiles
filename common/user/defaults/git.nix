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
  };
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        hostname = "github.com";
        identityFile = "~/.ssh/github_windows";
      };
    };
  };

  services.ssh-agent.enable = true;
}    
