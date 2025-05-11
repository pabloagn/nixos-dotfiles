/*
* Route: /clients/native/user/dev/editors/emacs/emacs.bkp.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ lib, config, pkgs, ... }:

with lib;
let cfg = config.modules.editors.emacs;
    emacs = with pkgs; (emacsPackagesFor
      (if config.modules.desktop.type == "wayland"
       then emacs-pgtk
       else emacs-git)).emacsWithPackages (epkgs: with epkgs; [
         # treesit-grammars.with-all-grammars
         vterm
       ]);
in {
  options.modules.editors.emacs = {
    enable = mkBoolOpt false;
    # doom = rec {
    #   enable = mkBoolOpt false;
    #   forgeUrl = mkOpt types.str "https://github.com";
    #   repoUrl = mkOpt types.str "${forgeUrl}/doomemacs/doomemacs";
    #   configRepoUrl = mkOpt types.str "${forgeUrl}/hlissner/.doom.d";
    # };
  };

  config = mkIf cfg.enable {
    nixpkgs.overlays = [
      hey.inputs.emacs-overlay.overlays.default
    ];

    user.packages = with pkgs; [
      (mkLauncherEntry "Emacs (Debug Mode)" {
        description = "Start Emacs in debug mode";
        icon = "emacs";
        exec = "${emacs}/bin/emacs --debug-init";
      })

      # HEAD + native-comp
      emacs

      ## Module dependencies
      # :tools editorconfig
      # editorconfig-core-c # per-project style config
    ];



  };
}
