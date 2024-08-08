# ------------------------------------------
# system/interface/fonts.nix Module
# ------------------------------------------

{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [

    # Monospace
    fira-code
    fira-code-symbols
    hack-font
    ibm-plex
    jetbrains-mono
    julia-mono
    roboto-mono

    # Sans-serif
    liberation_ttf
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    work-sans
    roboto
    raleway
    quicksand
    lato
    dosis
    open-sans

    # Serif
    cardo

    # Symbols
    font-awesome
    powerline-fonts
    powerline-symbols
    nerdfonts

    # Note: We'll only install FiraCode & Droid Sans Mono from nerdfonts due to package size
    # (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "NerdFontsSymbolsOnly" ]; })
  ];
}
