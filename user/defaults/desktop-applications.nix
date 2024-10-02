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
  iconPath = "${config.home.homeDirectory}/.dotfiles/user/desktop-apps/logos";
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
      genericName = "App - Text Editor";
      exec = "kitty nvim %F";
      icon = "${iconPath}/NeoVim_Logo.png";
      comment = "Edit text files in a terminal using NeoVim.";
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
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with Personal profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Media
    (makeDesktopItem {
      name = "firefox-media";
      desktopName = "Firefox Media";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Media ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_Media_Logo.png";
      comment = "Launch Firefox with Media profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Solenoid Labs
    (makeDesktopItem {
      name = "firefox-solenoidlabs";
      desktopName = "Firefox Solenoid Labs";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with Solenoid Labs profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - United Kingdom
    (makeDesktopItem {
      name = "firefox-uk";
      desktopName = "Firefox UK";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with UK profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Academic
    (makeDesktopItem {
      name = "firefox-academic";
      desktopName = "Firefox Academic";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Academic ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with Academic profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Bsogood
    (makeDesktopItem {
      name = "firefox-bsogood";
      desktopName = "Firefox Bsogood";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Bsogood ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with Bsogood profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Private
    (makeDesktopItem {
      name = "firefox-private";
      desktopName = "Firefox Private";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Private ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_Private_Logo.png";
      comment = "Launch Firefox with custom Private profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # ---------------------------------------------------------
    # Firefox Websites
    # ---------------------------------------------------------
    
    # Firefox Media - YouTube
    (makeDesktopItem {
      name = "firefox-media-youtube";
      desktopName = "Media - YouTube";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Media ${firefoxNewWindow} https://youtube.com";
      icon = "${iconPath}/YouTube_Logo.png";
      comment = "Launch YouTube Web App under the Firefox Media Profile. Furthermore, it will by default be opened in the YouTube container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Linear
    (makeDesktopItem {
      name = "firefox-personal-linear";
      desktopName = "Personal - Linear";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://linear.app/";
      icon = "${iconPath}/Linear_Logo.png";
      comment = "Launch Linear Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Akiflow
    (makeDesktopItem {
      name = "firefox-personal-akiflow";
      desktopName = "Personal - Akiflow";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://web.akiflow.com";
      icon = "${iconPath}/Akiflow_Logo.png";
      comment = "Launch Akiflow Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ProtonDrive
    (makeDesktopItem {
      name = "firefox-personal-protondrive";
      desktopName = "Personal - ProtonDrive";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://drive.proton.me/";
      icon = "${iconPath}/Proton_Logo.png";
      comment = "Launch ProtonDrive Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ProtonMail
    (makeDesktopItem {
      name = "firefox-personal-protonmail";
      desktopName = "Personal - ProtonMail";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://mail.proton.me/";
      icon = "${iconPath}/Proton_Logo.png";
      comment = "Launch ProtonMail Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Search
    # Note the flags we need to include in order for Google to be a trully add-free experience
    # There are sometimes certain URL flafgs we can use. We'll include them here ;).
    (makeDesktopItem {
      name = "firefox-personal-google-search";
      desktopName = "Google Search";
      genericName = "Personal - Search Engine";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.google.com/search";
      icon = "${iconPath}/Google_Logo.png";
      comment = "Launch Google Search Engine under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Advanced Search
    # Note the flags we need to include in order for Google to be a trully add-free experience
    # There are sometimes certain URL flafgs we can use. We'll include them here ;).
    (makeDesktopItem {
      name = "firefox-personal-google-advanced-search";
      desktopName = "Google Advanced Search";
      genericName = "Personal - Search Engine";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.google.com/advanced_search";
      icon = "${iconPath}/Google_Logo.png";
      comment = "Launch Google Advanced Search Engine under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Advanced Image Search
    (makeDesktopItem {
      name = "firefox-personal-google-images";
      desktopName = "Google Images";
      genericName = "Personal - Search Engine";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.google.com/advanced_image_search";
      icon = "${iconPath}/Google_Logo.png";
      comment = "Launch Google Advanced Image Search Engine under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - GitHub
    (makeDesktopItem {
      name = "firefox-personal-github";
      desktopName = "GitHub";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://github.com/pabloagn";
      icon = "${iconPath}/GitHub_Logo.png";
      comment = "Launch GitHub Web App on personal repositories list under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - LinkedIn
    (makeDesktopItem {
      name = "firefox-personal-linkedin";
      desktopName = "LinkedIn";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://www.linkedin.com";
      icon = "${iconPath}/LinkedIn.png";
      comment = "Launch LinkedIn Web App under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - NixOS Packages
    (makeDesktopItem {
      name = "firefox-personal-nixos-packages";
      desktopName = "NixOS Packages";
      genericName = "Personal - Reference";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://search.nixos.org/packages";
      icon = "${iconPath}/NixOS_Logo.png";
      comment = "Launch NixOS Packages search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - MyNixOS
    (makeDesktopItem {
      name = "firefox-personal-mynixos";
      desktopName = "MyNixOS";
      genericName = "Personal - Reference";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://mynixos.com";
      icon = "${iconPath}/NixOS_Logo.png";
      comment = "Launch MyNixOS under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - NixOS Home Manager Options
    (makeDesktopItem {
      name = "firefox-personal-nixos-home-manager";
      desktopName = "NixOS Home Manager Options";
      genericName = "Personal - Reference";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://nix-community.github.io/home-manager/options.html";
      icon = "${iconPath}/NixOS_Logo.png";
      comment = "Launch NixOS Home Manager Options under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Pastebin
    (makeDesktopItem {
      name = "firefox-personal-pastebin";
      desktopName = "Pastebin";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://pastebin.com";
      icon = "${iconPath}/Pastebin_Logo.png";
      comment = "Launch Pastebin under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })
    # Firefox Personal - Unsplash
    (makeDesktopItem {
      name = "firefox-personal-unsplash";
      desktopName = "Unsplash";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://unsplash.com";
      icon = "${iconPath}/Unsplash_Logo.png";
      comment = "Launch Unsplash under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ChatGPT
    (makeDesktopItem {
      name = "firefox-personal-chatgpt";
      desktopName = "ChatGPT";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://chatgpt.com";
      icon = "${iconPath}/ChatGPT_Logo.png";
      comment = "Launch ChatGPT under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ClaudeAI
    (makeDesktopItem {
      name = "firefox-personal-claude";
      desktopName = "ClaudeAI";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://claude.ai";
      icon = "${iconPath}/Claude_Logo.png";
      comment = "Launch ClaudeAI under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Amazon Mexico
    (makeDesktopItem {
      name = "firefox-personal-amazon-mexico";
      desktopName = "Amazon Mexico";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://amazon.com.mx";
      icon = "${iconPath}/Amazon_Logo.png";
      comment = "Launch Amazon Mexico under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - Google Maps
    (makeDesktopItem {
      name = "firefox-uk-google-maps";
      desktopName = "Google Maps";
      genericName = "UK - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://maps.google.com";
      icon = "${iconPath}/Google_Logo.png";
      comment = "Launch Google Maps under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - AirBnB
    (makeDesktopItem {
      name = "firefox-uk-airbnb";
      desktopName = "AirBnB";
      genericName = "UK - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://airbnb.co.uk";
      icon = "${iconPath}/AirBnB_Logo.png";
      comment = "Launch AirBnB under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - Amazon UK
    (makeDesktopItem {
      name = "firefox-uk-amazon";
      desktopName = "Amazon UK";
      genericName = "UK - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://amazon.co.uk";
      icon = "${iconPath}/Amazon_Logo.png";
      comment = "Launch Amazon UK under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - PayPal UK
    (makeDesktopItem {
      name = "firefox-uk-paypal-uk";
      desktopName = "PayPal UK";
      genericName = "UK - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://www.paypal.com/uk";
      icon = "${iconPath}/PayPal_Logo.png";
      comment = "Launch PayPal UK under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Solenoid Labs Pablo - Upwork
    (makeDesktopItem {
      name = "firefox-solenoid-labs-pablo-upwork";
      desktopName = "Upwork";
      genericName = "Solenoid Labs - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} https://upwork.com";
      icon = "${iconPath}/Upwork_Logo.png";
      comment = "Launch Upwork under the Firefox Solenoid Labs Pablo Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Academic - Blackboard
    (makeDesktopItem {
      name = "firefox-academic-blackboard";
      desktopName = "Blackboard";
      genericName = "Academic - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Academic ${firefoxNewWindow} https://www.ole.bris.ac.uk/ultra/institution-page";
      icon = "${iconPath}/Blackboard_Logo.png";
      comment = "Launch Blackboard home page under the Firefox Academic Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })
  ];
}
