-- .dotfiles/user/dev/nvim/plugin/vimtex.lua

if vim.g.loaded_vimtex then
  print("Attempting to configure vimtex for Okular...")

  -- ===== VimTeX Configuration for Okular =====

  -- Viewer: CHANGE THIS TO OKULAR
  vim.g.vimtex_view_method = 'okular'
  -- Okular-specific options for forward SyncTeX
  -- The exact format might vary slightly, this is a common one.
  -- '--unique' ensures only one Okular instance handles the file.
  vim.g.vimtex_view_okular_options = '--unique file:%f#src:%l%f'

  -- Compiler: Use latexmk (provided by the flake's devShell)
  vim.g.vimtex_compiler_method = 'latexmk'
  vim.g.vimtex_compiler_latexmk = {
      continuous = 1,
      executable = 'latexmk',
  }

  -- SyncTeX: Use nvr for backward sync (Okular -> Neovim)
  -- Okular typically uses DBus to call back, which vimtex/nvr handles.
  vim.g.vimtex_compiler_progname = 'nvr'

  -- Optional: Automatically open the viewer
  vim.g.vimtex_view_automatic = 1

  print("Vimtex configuration updated for Okular.")
else
  print("Vimtex plugin not detected yet, configuration might be deferred.")
end
