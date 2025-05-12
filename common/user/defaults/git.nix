/*
* Route: /common/user/defaults/git.nix
* Type: Configuration
* Created by: Pablo Aguirre
*/

{
  programs.git = {
    enable = true;

    userName = "Pablo Aguirre";
    userEmail = "pabloaguirrenck@protonmail.com";

    extraConfig = {
      init.defaultBranch = "main";
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
