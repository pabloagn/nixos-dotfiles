/*
* Route: /common/system/interface/custom-fonts.nix
* Type: Module
* Created by: Pablo Aguirre
*/

{ pkgs, lib, ... }:

let
  mkFontPackage = {
    fontName,
    fontPath,
    fontType ? "opentype"
  }:
    pkgs.stdenvNoCC.mkDerivation {
      name = "${fontName}-font";
      src = fontPath;

      meta = {
        description = "Locally provided ${fontName} font";
        license = lib.licenses.unfree;
      };

      installPhase = ''
        runHook preInstall
        install -d $out/share/fonts/${fontType}
        install -m444 $src/* $out/share/fonts/${fontType}/
        runHook postInstall
      '';

      dontBuild = true;
      dontFixup = true;
    };

in
{
  serverMono = mkFontPackage {
    fontName = "server-mono";
    fontPath = ../../assets/fonts/ServerMono;
    fontType = "opentype"; # Or "truetype" if they are .ttf
  };
}
