# ------------------------------------------
# user/term/starship/starship.nix module
# ------------------------------------------

{ pkgs, lib, ...}:

{
  programs.starship = {
    enable = true;
    settings = let
      hostInfo = "$username$hostname($shlvl)($cmd_duration)";
      nixInfo = "($nix_shell)";
      localInfo = "$directory($git_branch$git_commit$git_state$git_status)($aws$gcloud$openstack)";
      prompt = "$jobs$character";
    in {
      format = ''
        ${hostInfo} $fill ${nixInfo}
        ${localInfo} $fill $time
        ${prompt}
      '';

      fill.symbol = " ";

      # Core
      username = {
        format = "[$user]($style)";
        show_always = true;
      };
      hostname = {
        format = "[@$hostname]($style) ";
        ssh_only = false;
        style = "bold green";
      };
      shlvl = {
        format = "[$shlvl]($style) ";
        style = "bold cyan";
        threshold = 2;
        repeat = true;
        disabled = false;
      };
      cmd_duration = {
        format = "took [$duration]($style) ";
      };

      directory = {
        format = "[$path]($style)( [$read_only]($read_only_style)) ";
      };
      nix_shell = {
        format = "[($name \\(develop\\) <- )$symbol]($style) ";
        impure_msg = "";
        symbol = " ";
        style = "bold red";
      };
      custom = {
      };

      character = {
        error_symbol = "[~~>](bold red)";
        success_symbol = "[->>](bold green)";
        vimcmd_symbol = "[<<-](bold yellow)";
        vimcmd_visual_symbol = "[<<-](bold cyan)";
        vimcmd_replace_symbol = "[<<-](bold purple)";
        vimcmd_replace_one_symbol = "[<<-](bold purple)";
      };

      time = {
        format = "\\[[$time]($style)\\]";
        disabled = false;
      };

      # Cloud formatting
      gcloud.format = "on [$symbol$active(/$project)(\\($region\\))]($style)";
      aws.format = "on [$symbol$profile(\\($region\\))]($style)";

      aws.symbol = " ";
      conda.symbol = " ";
      dart.symbol = " ";
      directory.read_only = " ";
      docker_context.symbol = " ";
      elm.symbol = " ";
      elixir.symbol = "";
      gcloud.symbol = " ";
      git_branch.symbol = " ";
      golang.symbol = " ";
      hg_branch.symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      memory_usage.symbol = "󰍛 ";
      nim.symbol = "󰆥 ";
      nodejs.symbol = " ";
      package.symbol = "󰏗 ";
      perl.symbol = " ";
      php.symbol = " ";
      python.symbol = " ";
      ruby.symbol = " ";
      rust.symbol = " ";
      scala.symbol = " ";
      shlvl.symbol = "";
      swift.symbol = "󰛥 ";
      terraform.symbol = "󱁢";
    };
  };
}
