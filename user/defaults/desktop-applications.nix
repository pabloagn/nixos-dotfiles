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
    # Note:
    #   There's an actual hyprland shortcut for this, since there is this undeletable wrapper that confuses me on Rofi.
    (makeDesktopItem {
      name = "nvim-instance";
      desktopName = "Neovim";
      genericName = "App - Text Editor";
      # exec = "kitty nvim %F";
      exec = "kitty --directory /home/pabloagn nvim %F";
      icon = "${iconPath}/NeoVim_Logo.png";
      comment = "Edit text files in a terminal using NeoVim, detached from any terminal instance.";
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

    # Firefox - Phantom
    (makeDesktopItem {
      name = "firefox-phantom";
      desktopName = "Firefox Phantom";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P TheHumanPalace ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with the Phantom profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox - GenAI
    (makeDesktopItem {
      name = "firefox-genai";
      desktopName = "Firefox GenAI Dev";
      genericName = "Profile";
      exec = "${pkgs.firefox}/bin/firefox -P GenAI ${firefoxNewWindow} %u";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with the GenAI profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox - Incognito
    (makeDesktopItem {
      name = "firefox-incognito";
      desktopName = "Firefox Incognito";
      genericName = "Mode";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} %u --private-window";
      icon = "${iconPath}/Firefox_General_Logo.png";
      comment = "Launch Firefox with Incognito mode.";
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
    
    # Firefox Media
    # ---------------------------------------------------------

    # Firefox Media - YouTube
    (makeDesktopItem {
      name = "firefox-media-youtube";
      desktopName = "YouTube";
      genericName = "Media - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Media ${firefoxNewWindow} https://youtube.com";
      icon = "${iconPath}/YouTube_Logo.png";
      comment = "Launch YouTube Web App under the Firefox Media Profile. Furthermore, it will by default be opened in the YouTube container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal
    # ---------------------------------------------------------

    # Firefox Personal - Linear
    (makeDesktopItem {
      name = "firefox-personal-linear";
      desktopName = "Linear";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://linear.app/";
      icon = "${iconPath}/Linear_Logo.png";
      comment = "Launch Linear Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Akiflow
    (makeDesktopItem {
      name = "firefox-personal-akiflow";
      desktopName = "Akiflow";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://web.akiflow.com";
      icon = "${iconPath}/Akiflow_Logo.png";
      comment = "Launch Akiflow Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ProtonDrive
    (makeDesktopItem {
      name = "firefox-personal-protondrive";
      desktopName = "ProtonDrive";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://drive.proton.me/";
      icon = "${iconPath}/Protondrive_Logo.png";
      comment = "Launch ProtonDrive Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - ProtonMail
    (makeDesktopItem {
      name = "firefox-personal-protonmail";
      desktopName = "ProtonMail";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://mail.proton.me/";
      icon = "${iconPath}/Protonmail_Logo.png";
      comment = "Launch ProtonMail Web App under the Firefox Personal Profile. Furthermore, it will by default be opened in the Productivity container.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Reddit
    (makeDesktopItem {
      name = "firefox-personal-reddit";
      desktopName = "Reddit";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://reddit.com";
      icon = "${iconPath}/Reddit_Logo.png";
      comment = "Launch Reddit Web App under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Personal - Goodreads
    (makeDesktopItem {
      name = "firefox-personal-goodreads";
      desktopName = "Goodreads";
      genericName = "Personal - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://goodreads.com";
      icon = "${iconPath}/Goodreads_Logo.png";
      comment = "Launch Goodreads Web App under the Firefox Personal Profile.";
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
      icon = "${iconPath}/LinkedIn_Logo.png";
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

    # Firefox Personal - Standard Notes
    (makeDesktopItem {
      name = "firefox-personal-standard-notes";
      desktopName = "Standard Notes";
      genericName = "Personal - Standard Notes";
      exec = "${pkgs.firefox}/bin/firefox -P Personal ${firefoxNewWindow} https://app.standardnotes.com/";
      icon = "${iconPath}/Standard_Notes_Logo.png";
      comment = "Launch Standard Notes under the Firefox Personal Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })


    # Firefox GenAI
    # ---------------------------------------------------------

    # Firefox AI - ClaudeAI
    (makeDesktopItem {
      name = "firefox-genai-claude";
      desktopName = "ClaudeAI";
      genericName = "GenAI - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P GenAI ${firefoxNewWindow} https://claude.ai";
      icon = "${iconPath}/Claude_Logo.png";
      comment = "Launch ClaudeAI under the Firefox GenAI Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox AI - GeminiAI
    (makeDesktopItem {
      name = "firefox-genai-gemini";
      desktopName = "GeminiAI";
      genericName = "GenAI - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P GenAI ${firefoxNewWindow} https://aistudio.google.com/";
      icon = "${iconPath}/GoogleGemini_Logo.png";
      comment = "Launch GeminiAI under the Firefox GenAI Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox GenAI - ChatGPT
    (makeDesktopItem {
      name = "firefox-genai-chatgpt";
      desktopName = "ChatGPT";
      genericName = "GenAI - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P GenAI ${firefoxNewWindow} https://chatgpt.com";
      icon = "${iconPath}/ChatGPT_Logo.png";
      comment = "Launch ChatGPT under the Firefox GenAI Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox GenAI - PerplexityAI
    (makeDesktopItem {
      name = "firefox-genai-perplexity";
      desktopName = "PerplexityAI";
      genericName = "GenAI - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P GenAI ${firefoxNewWindow} https://www.perplexity.ai/";
      icon = "${iconPath}/PerplexityAI_Logo.png";
      comment = "Launch PerplexityAI under the Firefox GenAI Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom
    # ---------------------------------------------------------

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

    # Firefox United Kingdom - IKEA
    (makeDesktopItem {
      name = "firefox-uk-ikea-uk";
      desktopName = "IKEA United Kingdom";
      genericName = "UK - Website";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://www.ikea.com/gb/en/";
      icon = "${iconPath}/IKEA_Logo.png";
      comment = "Launch IKEA UK under the Firefox United Kingdom Profile.";
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

    # Firefox United Kingdom - Tesco
    (makeDesktopItem {
      name = "firefox-uk-tesco";
      desktopName = "Tesco";
      genericName = "UK - Website";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://www.tesco.com/groceries/";
      icon = "${iconPath}/Tesco_Logo.png";
      comment = "Launch Tesco Groceries under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - Sainsbury's
    (makeDesktopItem {
      name = "firefox-uk-sainsburys";
      desktopName = "Sainsbury's";
      genericName = "UK - Website";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://www.sainsburys.co.uk/gol-ui/groceries";
      icon = "${iconPath}/Sainsburys_Logo.png";
      comment = "Launch Sainsbury's Groceries under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox United Kingdom - Boots
    (makeDesktopItem {
      name = "firefox-uk-boots";
      desktopName = "Boots";
      genericName = "UK - Website";
      exec = "${pkgs.firefox}/bin/firefox -P UnitedKingdom ${firefoxNewWindow} https://www.boots.com/";
      icon = "${iconPath}/Boots_Logo.png";
      comment = "Launch Boots under the Firefox United Kingdom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Solenoid Labs
    # ---------------------------------------------------------

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

    # Firefox Solenoid Labs Pablo - Figma
    (makeDesktopItem {
      name = "firefox-solenoid-labs-pablo-figma";
      desktopName = "Figma";
      genericName = "Solenoid Labs - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} https://figma.com";
      icon = "${iconPath}/Figma_Logo.png";
      comment = "Launch Figma under the Firefox Solenoid Labs Pablo Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Solenoid Labs Pablo - Google Drive
    (makeDesktopItem {
      name = "firefox-solenoid-labs-pablo-googledrive";
      desktopName = "Google Drive";
      genericName = "Solenoid Labs - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} https://drive.google.com";
      icon = "${iconPath}/GoogleDrive_Logo.png";
      comment = "Launch Google Drive under the Firefox Solenoid Labs Pablo Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Solenoid Labs - GitHub
    (makeDesktopItem {
      name = "firefox-solenoid-labs-pablo-github";
      desktopName = "GitHub Solenoid Labs";
      genericName = "Solenoid Labs - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P SolenoidLabsPablo ${firefoxNewWindow} https://github.com/orgs/Solenoid-Labs/repositories";
      icon = "${iconPath}/GitHub_Logo.png";
      comment = "Launch GitHub Web App on Solenoid Labs repositories list under the Firefox Solenoid Labs Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

    # Firefox Academic
    # ---------------------------------------------------------

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

    # Firefox Phantom
    # ---------------------------------------------------------

    # Firefox Phantom - GitHub
    (makeDesktopItem {
      name = "firefox-phantom-github";
      desktopName = "GitHub Phantom";
      genericName = "Phantom - Web App";
      exec = "${pkgs.firefox}/bin/firefox -P TheHumanPalace ${firefoxNewWindow} https://github.com/orgs/Phantomklange/repositories";
      icon = "${iconPath}/GitHub_Logo.png";
      comment = "Launch GitHub Web App on Phantom repositories list under the Firefox Phantom Profile.";
      categories = [ "Network" "WebBrowser" ];
      mimeTypes = [ "text/html" "text/xml" ];
    })

  ];
}
