{ pkgs, ... }:

{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc.lib
    zlib
    # openssl
    # glibc
    # libxcb
    # libX11
    # libGL
    # libdrm
    # fontconfig
    # freetype
  ];
  environment.systemPackages = with pkgs; [
    nix-ld
  ];
}
