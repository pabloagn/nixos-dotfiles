# ---------------------------------------------------------
# Route:............system/interface/fonts.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

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
    office-code-pro
    inconsolata
    hack-font
    cascadia-code
    paratype-pt-mono

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
    montserrat
    source-sans-pro
    libre-franklin

    # Serif
    cardo
    merriweather
    garamond-libre
    crimson
    gelasio

    # Symbols
    font-awesome
    powerline-fonts
    powerline-symbols
    nerdfonts

    # Note: We'll only install FiraCode & Droid Sans Mono from nerdfonts due to package size
    # (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "NerdFontsSymbolsOnly" ]; })
  ];
}
