# ---------------------------------------------------------
# Route:............/user/defaults/defaults.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# Enhanced by:......Claude
# ---------------------------------------------------------
{ config, pkgs, ... }:
{
  # ------------------------------------------
  # MIME Options
  # ------------------------------------------
  # https://discourse.nixos.org/t/set-default-application-for-mime-type-with-home-manager/17190/2
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      # General
      "application/pdf" = ["org.kde.okular.desktop"];
      "application/x-extension-htm" = ["firefox.desktop"];
      "application/x-extension-html" = ["firefox.desktop"];
      "application/x-extension-shtml" = ["firefox.desktop"];
      "application/x-extension-xht" = ["firefox.desktop"];
      "application/x-extension-xhtml" = ["firefox.desktop"];
      "application/x-zerosize" = ["nvim.desktop"];
      "application/xhtml+xml" = ["firefox.desktop"];
      "audio/flac" = ["clementine.desktop"];
      "audio/mp3" = ["clementine.desktop"];
      "audio/mp4" = ["clementine.desktop"];
      "audio/mpeg" = ["clementine.desktop"];
      "audio/ogg" = ["clementine.desktop"];
      "audio/x-m4a" = ["clementine.desktop"];
      "audio/x-wav" = ["clementine.desktop"];
      "image/bmp" = ["feh-image-viewer.desktop"];
      "image/gif" = ["feh-image-viewer.desktop"];
      "image/jpeg" = ["feh-image-viewer.desktop"];
      "image/png" = ["feh-image-viewer.desktop"];
      "image/svg+xml" = ["feh-image-viewer.desktop"];
      "image/tiff" = ["feh-image-viewer.desktop"];
      "image/webp" = ["feh-image-viewer.desktop"];
      "text/html" = ["firefox.desktop"];
      "text/plain" = ["nvim.desktop"];
      "video/avi" = ["mpv.desktop"];
      "video/mp4" = ["mpv.desktop"];
      "video/ogg" = ["mpv.desktop"];
      "video/webm" = ["mpv.desktop"];
      "video/x-matroska" = ["mpv.desktop"];
      "video/x-msvideo" = ["mpv.desktop"];
      "x-scheme-handler/chrome" = ["firefox.desktop"];
      "x-scheme-handler/http" = ["firefox.desktop"];
      "x-scheme-handler/https" = ["firefox.desktop"];
      
      # Programming Languages - General Text Formats
      "text/x-shellscript" = ["nvim.desktop"];
      "text/x-script.python" = ["nvim.desktop"];
      "text/x-script.bash" = ["nvim.desktop"];
      "text/x-c" = ["nvim.desktop"];
      "text/x-c++" = ["nvim.desktop"];
      "text/x-java" = ["nvim.desktop"];
      "text/x-java-source" = ["nvim.desktop"];
      "text/x-pascal" = ["nvim.desktop"];
      "text/x-script.perl" = ["nvim.desktop"];
      "text/x-script.ruby" = ["nvim.desktop"];
      "text/x-rust" = ["nvim.desktop"];
      "text/x-haskell" = ["nvim.desktop"];
      "text/x-literate-haskell" = ["nvim.desktop"];
      "text/x-lua" = ["nvim.desktop"];
      "text/x-php" = ["nvim.desktop"];
      "text/x-ruby" = ["nvim.desktop"];
      "text/x-python" = ["nvim.desktop"];
      "text/x-R" = ["nvim.desktop"];
      "text/x-scala" = ["nvim.desktop"];
      "text/x-scheme" = ["nvim.desktop"];
      "text/x-typescript" = ["nvim.desktop"];
      "text/javascript" = ["nvim.desktop"];
      "text/x-csrc" = ["nvim.desktop"];
      "text/x-chdr" = ["nvim.desktop"];
      "text/x-c++src" = ["nvim.desktop"];
      "text/x-c++hdr" = ["nvim.desktop"];
      "text/x-csharp" = ["nvim.desktop"];
      "text/x-go" = ["nvim.desktop"];
      "text/x-fortran" = ["nvim.desktop"];
      "text/x-erlang" = ["nvim.desktop"];
      "text/x-elixir" = ["nvim.desktop"];
      "text/x-diff" = ["nvim.desktop"];
      "text/x-dart" = ["nvim.desktop"];
      "text/x-cmake" = ["nvim.desktop"];
      "text/x-clojure" = ["nvim.desktop"];

      # Config Files
      "application/json" = ["nvim.desktop"];
      "application/toml" = ["nvim.desktop"];
      "application/x-yaml" = ["nvim.desktop"];
      "text/yaml" = ["nvim.desktop"];
      "text/x-ini" = ["nvim.desktop"];
      "application/xml" = ["nvim.desktop"];
      "text/xml" = ["nvim.desktop"];
      "application/x-wine-extension-ini" = ["nvim.desktop"];
      "application/vnd.coffeescript" = ["nvim.desktop"];
      "application/x-ndjson" = ["nvim.desktop"];
      "application/ld+json" = ["nvim.desktop"];

      # Web Development
      "text/css" = ["nvim.desktop"];
      "text/scss" = ["nvim.desktop"];
      "text/sass" = ["nvim.desktop"];
      "text/less" = ["nvim.desktop"];
      "application/javascript" = ["nvim.desktop"];
      "application/typescript" = ["nvim.desktop"];
      "application/x-typescript" = ["nvim.desktop"];
      "application/x-httpd-php" = ["nvim.desktop"];
      "application/x-php" = ["nvim.desktop"];
      "application/jsx" = ["nvim.desktop"];
      "application/x-jsx" = ["nvim.desktop"];
      "application/tsx" = ["nvim.desktop"];
      "application/x-tsx" = ["nvim.desktop"];
      "application/graphql" = ["nvim.desktop"];
      "application/wasm" = ["nvim.desktop"];

      # Documentation & Markup
      "text/markdown" = ["nvim.desktop"];
      "text/x-markdown" = ["nvim.desktop"];
      "text/x-rst" = ["nvim.desktop"];
      "text/x-tex" = ["nvim.desktop"];
      "text/x-latex" = ["nvim.desktop"];
      "application/x-tex" = ["nvim.desktop"];
      "application/x-latex" = ["nvim.desktop"];
      "text/asciidoc" = ["nvim.desktop"];
      "text/x-org" = ["nvim.desktop"];
      "text/x-textile" = ["nvim.desktop"];
      "application/x-rmarkdown" = ["nvim.desktop"];
      "application/x-jupyter-notebook+json" = ["nvim.desktop"];

      # Database & Data
      "application/sql" = ["nvim.desktop"];
      "text/x-sql" = ["nvim.desktop"];
      "text/csv" = ["nvim.desktop"];
      "text/tab-separated-values" = ["nvim.desktop"];
      "application/vnd.sqlite3" = ["nvim.desktop"];
      "application/x-sqlite3" = ["nvim.desktop"];
      
      # Shell/System
      "application/x-sh" = ["nvim.desktop"];
      "application/x-shellscript" = ["nvim.desktop"];
      "application/x-desktop" = ["nvim.desktop"];
      "application/x-executable" = ["nvim.desktop"];
      "text/x-makefile" = ["nvim.desktop"];
      "text/x-meson" = ["nvim.desktop"];
      "text/x-cmake-project" = ["nvim.desktop"];
      "application/x-perl" = ["nvim.desktop"];
      "application/x-ruby" = ["nvim.desktop"];
      "application/x-python" = ["nvim.desktop"];
      "application/x-bash" = ["nvim.desktop"];
      "application/x-zsh" = ["nvim.desktop"];
      "application/x-fish" = ["nvim.desktop"];
      "application/x-systemd-unit" = ["nvim.desktop"];
      
      # Version Control
      "text/x-patch" = ["nvim.desktop"];
      "text/x-git-config" = ["nvim.desktop"];
      "text/x-hg-config" = ["nvim.desktop"];
      "text/x-svn-config" = ["nvim.desktop"];
      
      # DevOps & Infrastructure
      "application/x-docker" = ["nvim.desktop"];
      "text/x-dockerfile" = ["nvim.desktop"];
      "application/x-terraform" = ["nvim.desktop"];
      "application/x-ansible" = ["nvim.desktop"];
      "application/x-vagrant-vagrantfile" = ["nvim.desktop"];
      "application/x-jenkins" = ["nvim.desktop"];
      "application/vnd.kubernetes.helm.chart" = ["nvim.desktop"];
      "text/x-nginx-conf" = ["nvim.desktop"];
      "text/x-apache-conf" = ["nvim.desktop"];
      
      # Mobile Development
      "application/x-kotlin" = ["nvim.desktop"];
      "text/x-kotlin" = ["nvim.desktop"];
      "application/x-swift" = ["nvim.desktop"];
      "text/x-swift" = ["nvim.desktop"];
      "application/x-objective-c" = ["nvim.desktop"];
      "text/x-objective-c" = ["nvim.desktop"];
      
      # Game Development
      "application/x-godot-resource" = ["nvim.desktop"];
      "application/x-unity3d-scene" = ["nvim.desktop"];
      "application/x-unreal-blueprint" = ["nvim.desktop"];
      
      # Special formats
      "application/x-ipynb+json" = ["nvim.desktop"];  # Jupyter notebooks
      "application/vnd.groove-tool-template" = ["nvim.desktop"];  # Template files
      "application/x-kicad-pcb" = ["nvim.desktop"];  # KiCad PCB
      "application/x-kicad-schematic" = ["nvim.desktop"];  # KiCad Schematic
      
      # Nix-specific
      "text/x-nix" = ["nvim.desktop"];
      "application/x-nix-package" = ["nvim.desktop"];
      
      # Logs and debugging
      "text/x-log" = ["nvim.desktop"];
      "application/x-coredump" = ["nvim.desktop"];
      
      # Any other text-based format
      "text/x-generic" = ["nvim.desktop"];
      "application/octet-stream" = ["nvim.desktop"]; # Fallback for unknown binary files
    };
  };
}
