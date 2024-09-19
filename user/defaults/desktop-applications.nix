# ---------------------------------------------------------
# Route:............/user/defaults/desktop-applications.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

let
  # Variable for Firefox new window flag
  firefoxNewWindow = "-new-window";
  
  # Variable for desktop icons path
  iconPath = "${config.home.homeDirectory}/.dotfiles/user/desktop-apps";
in
{
  home.packages = with pkgs; [

    # ---------------------------------------------------------
    # Editors
    # ---------------------------------------------------------

    # NeoVim
    (makeDesktopItem {
      name = "nvim";
      desktopName = "NeoVim";
      genericName = "Text Editor";
      exec = "kitty nvim %F";
      icon = "${iconPath}/NeoVim.png";
      comment = "Edit text files in a terminal using NeoVim";
      categories = [ "Utility" "TextEditor" ];
      terminal = false;
      type = "Application";
    })

    # ---------------------------------------------------------
    # Firefox Profiles
    # ---------------------------------------------------------
    
    # Firefox Profile - Personal
    (makeDesktopItem {
      name = "firefox-personal";
      desktopName = "Firefox Personal";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_Personal.png";
      comment = "Launch Firefox with Personal profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Media
    (makeDesktopItem {
      name = "firefox-media";
      desktopName = "Firefox Media";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Media ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_Media.png";
      comment = "Launch Firefox with Media profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Solenoid Labs
    (makeDesktopItem {
      name = "firefox-solenoidlabs";
      desktopName = "Firefox Solenoid Labs";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_SolenoidLabs.png";
      comment = "Launch Firefox with Solenoid Labs profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # ---------------------------------------------------------
    # Firefox Web Apps
    # ---------------------------------------------------------
    
    # Firefox Media - YouTube Web Application
    (makeDesktopItem {
      name = "firefox-media-youtube";
      desktopName = "YouTube";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Media ${firefoxNewWindow} https://youtube.com";
      icon = "${iconPath}/Firefox_Media.png";
      comment = "Launch YouTube under the Firefox Media Profile. Furthermore, it will by default be opened in the YouTube container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Linear
    (makeDesktopItem {
      name = "firefox-personal-linear";
      desktopName = "Linear";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://linear.app/";
      icon = "${iconPath}/Linear.png";
      comment = "Launch Linear under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Search
    (makeDesktopItem {
      name = "firefox-personal-google-search";
      desktopName = "Google Search";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.google.com/search";
      icon = "${iconPath}/Google.png";
      comment = "Launch Google Search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Advanced Image Search
    (makeDesktopItem {
      name = "firefox-personal-google-images";
      desktopName = "Google Images";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.google.com/advanced_image_search";
      icon = "${iconPath}/Google.png";
      comment = "Launch Google Advanced Image Search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # GitHub
    (makeDesktopItem {
      name = "firefox-personal-github";
      desktopName = "GitHub";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://github.com";
      icon = "${iconPath}/GitHub.png";
      comment = "Launch GitHub under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # LinkedIn
    (makeDesktopItem {
      name = "firefox-personal-linkedin";
      desktopName = "LinkedIn";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.linkedin.com";
      icon = "${iconPath}/LinkedIn.png";
      comment = "Launch LinkedIn under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # NixOS Packages
    (makeDesktopItem {
      name = "firefox-personal-nixos-packages";
      desktopName = "NixOS Packages";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://search.nixos.org/packages";
      icon = "${iconPath}/NixOS.png";
      comment = "Launch NixOS Packages search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # MyNixOS
    (makeDesktopItem {
      name = "firefox-personal-mynixos";
      desktopName = "MyNixOS";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://mynixos.com";
      icon = "${iconPath}/NixOS.png";
      comment = "Launch MyNixOS under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # NixOS Home Manager Options
    (makeDesktopItem {
      name = "firefox-personal-nixos-home-manager";
      desktopName = "NixOS Home Manager Options";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://nix-community.github.io/home-manager/options.html";
      icon = "${iconPath}/NixOS.png";
      comment = "Launch NixOS Home Manager Options under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Pastebin
    (makeDesktopItem {
      name = "firefox-personal-pastebin";
      desktopName = "Pastebin";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://pastebin.com";
      icon = "${iconPath}/Pastebin.png";
      comment = "Launch Pastebin under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Proton Mail
    (makeDesktopItem {
      name = "firefox-personal-proton-mail";
      desktopName = "Proton Mail";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://main.proton.me";
      icon = "${iconPath}/Proton.png";
      comment = "Launch Proton Mail under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Unsplash
    (makeDesktopItem {
      name = "firefox-personal-unsplash";
      desktopName = "Unsplash";
      genericName = "Web Browser";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://unsplash.com";
      icon = "${iconPath}/Unsplash.png";
      comment = "Launch Unsplash under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })
  ];
}
