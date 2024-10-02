# ----------------------------------------------------------------------
# Route:...........././user/opsec/opsec.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Requirements
  # ------------------------------------------
  home.packages = with pkgs; [

  # Binary Analysis and Reverse Engineering
  # ------------------------------------------
  apktool
  ghidra
  radare2

  # Brute Forcing and Password Cracking
  # ------------------------------------------
  aircrack-ng
  hashcat
  hydra-cli
  john
  johnny
  thc-hydra

  # Browser
  # ------------------------------------------
  tor

  # Exploitation Frameworks
  # ------------------------------------------
  armitage
  metasploit

  # Forensics and Incident Response
  # ------------------------------------------
  autopsy

  # Information Gathering
  # ------------------------------------------
  maltego
  nmap
  social-engineer-toolkit
  wpscan

  # Network Analysis and Sniffing
  # ------------------------------------------
  wireshark

  # Penetration Testing Tools
  # ------------------------------------------
  burpsuite
  lynis
  nikto
  sqlmap

  # Resources
  # ------------------------------------------
  # A collection of wordlists useful for security testing
  wordlists

  ];
}
