# ---------------------------------------------------------
# Route:............/user/desktop/hypr/hyprland.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# Modified for:.....Declarative Display Management Script
# ---------------------------------------------------------

{ config, pkgs, ... }:

let
  # --- !!! USER CONFIGURATION !!! ---
  laptopDisplay = "eDP-1";
  hdmiDisplay = "HDMI-A-1";
  # Mode/Scale for HDMI when it's activated
  hdmiMode = "preferred";   # Or specific like "3840x2160@60Hz"
  hdmiScale = "2.2";    # Adjust this based on previous testing for comfort
  # Wallpaper path
  defaultWallpaper = "$HOME/.dotfiles/user/assets/wallpapers/wallpaper-01.jpg";
  # --- !!! END USER CONFIGURATION !!! ---

  # --- Script to Activate HDMI-Only Mode ---
  setHdmiModeScript = pkgs.writeShellScriptBin "set-hdmi-mode" ''
    #!${pkgs.runtimeShell}
    # set -e # Keep disabled for easier debugging for now

    HYPRCTL_CMD="hyprctl"
    HYPRPAPER_CMD="${pkgs.hyprpaper}/bin/hyprpaper"
    SEQ_CMD="${pkgs.coreutils}/bin/seq"
    HDMI_DISPLAY="${hdmiDisplay}"
    HDMI_MODE="${hdmiMode}"
    HDMI_SCALE="${hdmiScale}"
    LAPTOP_DISPLAY="${laptopDisplay}" # Still needed to disable it
    DEFAULT_WALLPAPER_PATH_RAW="${defaultWallpaper}"

    log() { echo "[set-hdmi-mode] $(date '+%T.%N') - $1" >&2; }

    # Expand Tilde
    case "$DEFAULT_WALLPAPER_PATH_RAW" in \~*) WALLPAPER_PATH="$HOME/''${DEFAULT_WALLPAPER_PATH_RAW#\~}" ;; *) WALLPAPER_PATH="$DEFAULT_WALLPAPER_PATH_RAW" ;; esac

    log "Activating HDMI-Only mode for $HDMI_DISPLAY."

    # Configure monitors: Enable HDMI at 0,0, disable Laptop
    monitor_cmd="keyword monitor $HDMI_DISPLAY,$HDMI_MODE,0x0,$HDMI_SCALE; keyword monitor $LAPTOP_DISPLAY,disable"
    log "Monitor CMD: $monitor_cmd"
    timeout 5s $HYPRCTL_CMD --batch "$monitor_cmd" || log "Error setting monitor state."

    sleep 1.0 # Wait for monitor changes

    # Move workspaces to HDMI
    workspace_cmd=""
    for i in $($SEQ_CMD 1 10); do workspace_cmd="$workspace_cmd dispatch moveworkspacetomonitor $i $HDMI_DISPLAY;"; done
    log "Workspace CMD: $workspace_cmd"
    timeout 5s $HYPRCTL_CMD --batch "$workspace_cmd" || log "Error moving workspaces."

    sleep 0.5 # Wait

    # Set wallpaper on HDMI
    log "Setting wallpaper on $HDMI_DISPLAY"
    wallpaper_cmd="dispatch exec $HYPRPAPER_CMD preload '$WALLPAPER_PATH'; dispatch exec $HYPRPAPER_CMD wallpaper '$HDMI_DISPLAY,$WALLPAPER_PATH'"
    log "Wallpaper CMD: $wallpaper_cmd"
    timeout 5s $HYPRCTL_CMD --batch "$wallpaper_cmd" || log "Error setting wallpaper."

    log "HDMI-Only mode setup complete."
    exit 0
  '';
in
{
  # --- Packages (Keep dependencies) ---
  home.packages = with pkgs; [
    jq # Might still be useful for manual debugging or future scripts
    hyprpaper
    hyprcursor
    coreutils # Provides 'seq'
    gawk # Provides 'timeout'
  ];

  # --- Config Files ---
  # Source hyprland.conf
  xdg.configFile."hypr/hyprland.conf" = { source = ./hyprland.conf; };
  # Source modules (monitors.conf now has static laptop definition)
  xdg.configFile."hypr/modules/monitors.conf" = { source = ./modules/monitors.conf; }; # Link static config
  xdg.configFile."hypr/modules/keybinds.conf" = { source = ./modules/keybinds.conf; };
  xdg.configFile."hypr/modules/workspaces.conf" = { source = ./modules/workspaces.conf; };
  xdg.configFile."hypr/modules/window-rules.conf" = { source = ./modules/window-rules.conf; };
  xdg.configFile."hypr/modules/keyboard.conf" = { source = ./modules/keyboard.conf; };

  # --- Assets & Hyprpaper Config ---
  xdg.configFile."hypr/assets/sounds/sutter-play.ogg" = { source = ../../assets/sounds/camera-shutter.ogg; };
  xdg.configFile."hypr/hyprpaper.conf" = { source = ../hyprpaper/hyprpaper.conf; };
}
