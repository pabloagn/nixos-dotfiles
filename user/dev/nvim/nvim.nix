# ----------------------------------------------------------------------
# Route:...........././user/term/nvim/nvim.nix
# Type:.............Module
# Created by:.......Pablo Aguirre
# ----------------------------------------------------------------------

{ config, pkgs, ... }:

{
  # ------------------------------------------
  # Packages
  # ------------------------------------------
  home.packages = with pkgs; [
  ];

  # ------------------------------------------
  # Program Options
  # ------------------------------------------
  # https://www.youtube.com/watch?v=YZAnJ0rwREA
  programs.neovim =
  # Define a parser. Otherwise, the plugin config will not work.
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    # Enable
    enable = true;

    # Aliases
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    # Lua Config
    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
    '';

    # Additional batteries
    extraPackages = with pkgs; [
      lua-language-server
      nil
      #rnix-lsp
      #xclip
      wl-clipboard
    ];

    # Plugins
    plugins = with pkgs.vimPlugins; [

      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugin/lsp.lua;
      }

      {
        plugin = multicursors-nvim;
        #config = toLuaFile ./plugin/multicursors.lua;
      }

      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      {
        plugin = catppuccin-nvim;
        config = toLuaFile ./plugin/catppuccin.lua;
      }

      neodev-nvim

      nvim-cmp 
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugin/cmp.lua;
      }

      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugin/telescope.lua;
      }

      {
        plugin = indent-blankline-nvim;
        config = toLuaFile ./plugin/indent_blankline.lua;
      }

      {
        plugin = nvim-colorizer-lua;
        config = toLuaFile ./plugin/colorizer.lua;
      }

      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets
      fidget-nvim

      {
      plugin = lualine-nvim;
      config = toLuaFile ./plugin/lualine/evil_lualine.lua;
      }

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-bash
          p.tree-sitter-c
          p.tree-sitter-clojure
          p.tree-sitter-commonlisp
          p.tree-sitter-csv
          p.tree-sitter-dart
          p.tree-sitter-dockerfile
          p.tree-sitter-elixir
          p.tree-sitter-elm
          p.tree-sitter-erlang
          p.tree-sitter-fortran
          p.tree-sitter-go
          p.tree-sitter-graphql
          p.tree-sitter-haskell
          p.tree-sitter-hcl
          p.tree-sitter-html
          p.tree-sitter-http
          p.tree-sitter-hyprlang
          p.tree-sitter-java
          p.tree-sitter-javascript
          p.tree-sitter-json
          p.tree-sitter-julia
          p.tree-sitter-kotlin
          p.tree-sitter-latex
          p.tree-sitter-lua
          p.tree-sitter-luadoc
          p.tree-sitter-markdown
          p.tree-sitter-markdown-inline
          p.tree-sitter-nix
          p.tree-sitter-ocaml
          p.tree-sitter-perl
          p.tree-sitter-php
          p.tree-sitter-python
          p.tree-sitter-regex
          p.tree-sitter-ruby
          p.tree-sitter-rust
          p.tree-sitter-scss
          p.tree-sitter-solidity
          p.tree-sitter-sql
          p.tree-sitter-ssh_config
          p.tree-sitter-svelte
          p.tree-sitter-swift
          p.tree-sitter-sxhkdrc
          p.tree-sitter-tmux
          p.tree-sitter-toml
          p.tree-sitter-tsv
          p.tree-sitter-typescript
          p.tree-sitter-vim
          p.tree-sitter-vimdoc
          p.tree-sitter-vue
          p.tree-sitter-xml
          p.tree-sitter-yaml
          p.tree-sitter-zathurarc
        ]));
        config = toLuaFile ./plugin/treesitter.lua;
      }

      vim-nix

    ];

  };

}
