# ---------------------------------------------------------
# Route:............/system/desktop/desktop-applications.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ---------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Firefox Applications
  # ------------------------------------------

  # Firefox Profiles
  # ------------------------------------------
  environment.systemPackages = with pkgs; [
    # Firefox Profile - Personal
    (makeDesktopItem {
      name = "firefox-personal";
      desktopName = "Firefox Personal";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Firefox with Personal profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Media
    (makeDesktopItem {
      name = "firefox-media";
      desktopName = "Firefox Media";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Media %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Media.png";
      comment = "Launch Firefox with Media profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Solenoid Labs
    (makeDesktopItem {
      name = "firefox-solenoidlabs";
      desktopName = "Firefox Solenoid Labs";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_SolenoidLabs.png";
      comment = "Launch Firefox with Solenoid Labs profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - United Kingdom
    (makeDesktopItem {
      name = "firefox-uk";
      desktopName = "Firefox UK";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Firefox with UK profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Academic
    (makeDesktopItem {
      name = "firefox-academic";
      desktopName = "Firefox Academic";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Academic %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Firefox with Academic profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Bsogood
    (makeDesktopItem {
      name = "firefox-bsogood";
      desktopName = "Firefox Bsogood";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Bsogood %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Firefox with Bsogood profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Profile - Private
    (makeDesktopItem {
      name = "firefox-private";
      desktopName = "Firefox Private";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P Private %u";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Firefox with custom Private profile";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Web Applications
    # ------------------------------------------
    # Firefox Media - YouTube Web Application
    (makeDesktopItem {
      name = "firefox-media-youtube";
      desktopName = "YouTube";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Media %u https://youtube.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Media.png";
      comment = "Launch YouTube under the Firefox Media Profile. Furthermore, it will by default be opened in the YouTube container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Linear
    (makeDesktopItem {
      name = "firefox-peronal-linear";
      desktopName = "Linear";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://linear.app/";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Linear.png";
      comment = "Launch Linear under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Akiflow
    (makeDesktopItem {
      name = "firefox-peronal-akiflow";
      desktopName = "Akiflow";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://web.akiflow.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Linear.png";
      comment = "Launch Akiflow under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Search
    # Note the flags we need to include in order for Google to be a trully add-free experience
    # There are sometimes certain URL flafgs we can use. We'll include them here ;).
    (makeDesktopItem {
      name = "firefox-peronal-google-search";
      desktopName = "Google Search";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://www.google.com/search";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Google.png";
      comment = "Launch Google Search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Google Advanced Image Search
    (makeDesktopItem {
      name = "firefox-peronal-google-images";
      desktopName = "Google Images";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://www.google.com/advanced_image_search";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Google.png";
      comment = "Launch Google Advanced Image Search under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - LinkedIn
    (makeDesktopItem {
      name = "firefox-personal-linkedin";
      desktopName = "LinkedIn";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://linkedin.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/LinkedIn.png";
      comment = "Launch LinkedIn under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - GitHub
    (makeDesktopItem {
      name = "firefox-personal-github";
      desktopName = "GitHub";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://github.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/GitHub.png";
      comment = "Launch GitHub under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - NixOS Packages
    (makeDesktopItem {
      name = "firefox-personal-nixos-packages";
      desktopName = "NixOS Packages";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://search.nixos.org/packages";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/GitHub.png";
      comment = "Launch NixOS Package directory under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Unsplash
    (makeDesktopItem {
      name = "firefox-personal-unsplash";
      desktopName = "Unsplash";
      genericName = "Website";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://unsplash.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/GitHub.png";
      comment = "Launch Unsplash under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ChatGPT
    (makeDesktopItem {
      name = "firefox-personal-chatgpt";
      desktopName = "ChatGPT";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://chatgpt.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Claude.png";
      comment = "Launch ChatGPT under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ClaudeAI
    (makeDesktopItem {
      name = "firefox-personal-claude";
      desktopName = "ClaudeAI";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal %u https://claude.ai";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Claude.png";
      comment = "Launch ClaudeAI under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Solenoid Labs Pablo - Upwork
    (makeDesktopItem {
      name = "firefox-solenoid-labs-pablo-upwork";
      desktopName = "Upwork";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Solenoid Labs Pablo %u https://upwork.com";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Firefox_Personal.png";
      comment = "Launch Upwork under the Firefox Solenoid Labs Pablo Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Academic - Blackboard
    (makeDesktopItem {
      name = "firefox-academic-blackboard";
      desktopName = "Blackboard";
      genericName = "Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Academic %u https://www.ole.bris.ac.uk/ultra/institution-page";
      icon = "/home/pabloagn/.dotfiles/user/desktop-apps/Blackboard.png";
      comment = "Launch Blackboard home page under the Firefox Academic Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

  ];

  # ------------------------------------------
  # Notes
  # ------------------------------------------
  # If using rofi, this module is always required.
  # Rofi will use available desktop applications under the drun execution mode.
}
