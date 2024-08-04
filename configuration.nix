{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      #./desktops/bspwm.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us,es";
    xkbOptions = "eurosign:e, compose:menu, grp:alt_space_toggle";
    xkbVariant = "";
  };

  # Configure console keymap
  console.keyMap = "us";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.pabloagnck = {
    isNormalUser = true;
    description = "Pablo Aguirre";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kate
    #  thunderbird
    ];
    shell = pkgs.zsh;
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Allow experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    lf
    neovim
    thunderbird
    brave
    obsidian
    lsd
    filezilla
    vscodium
    texmaker
    rstudio
    obsidian
    _1password-gui
    protonvpn-gui
    protonvpn-cli
    protonmail-bridge-gui
    protonmail-bridge
    vlc
    firefox-devedition
    vivaldi
    transmission
    ulauncher
    obs-studio
    btop
    audacious
    htop
    inkscape
    virtualbox
    glances
    redis
    zsh
    shotcut
    libreoffice
    tidal-dl
    sxhkd
    polybar
    picom
    dmenu-rs
    dunst
    nitrogen
    rofi
    xclip
    yt-dlp
    wezterm
    flameshot
    feh
    dunst
    python39
#    python310
#    python311
    neofetch
    ipfetch
    nixfmt
#    direnv
    nix-melt
    home-manager
];

  # Include fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    # We'll only install FiraCode & Droid Sans Mono from nerdfonts due to pakcage size
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
    jetbrains-mono
    ibm-plex
    cardo
    work-sans
    hack-font
  ];

  # Enable zsh
  programs.zsh.enable = true;

  # Enable picos compositor
  services.picom.enable = true;

  # Set Zsh as the default shell for the system
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ]; 

  # Configure sudo to be more convenient but still secure
  security.sudo.extraConfig = ''
    Defaults:pabloagnck timestamp_timeout=60
  '';

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}

