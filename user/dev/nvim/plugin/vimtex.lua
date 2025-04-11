-- ./plugin/vimtex.lua

-- Check if vimtex is loaded before configuring (good practice)
if not vim.g.loaded_vimtex then
  -- Vimtex might not be loaded yet if this file is sourced too early
  -- Alternatively, wrap this whole file's content in vim.defer_fn if issues arise
  print("Vimtex plugin not detected yet, configuration might be deferred.")
  -- return -- You might uncomment this if you strictly want it loaded first
end

print("Attempting to configure vimtex...")

-- ===== VimTeX Configuration =====

-- Viewer: Use Zathura (provided by the project flake's devShell)
vim.g.vimtex_view_method = 'zathura'
-- Ensure Zathura uses nvr (now globally available via home.packages) for backward sync
vim.g.vimtex_view_zathura_options = '--synctex-editor-command "nvr --remote-silent +%{line} %{input}"'
vim.g.vimtex_view_general_viewer = 'zathura' -- Explicitly set general viewer too

-- Compiler: Use latexmk (provided by the project flake's devShell)
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_compiler_latexmk = {
    continuous = 1,          -- Enable continuous compilation on save
    executable = 'latexmk',  -- Use latexmk from the PATH (flake provides it)
    -- Add build engine options if needed (e.g., for XeLaTeX or LuaLaTeX)
    -- options = {
    --   '-pdfxe',           -- Example for XeLaTeX
    --   '-shell-escape',    -- If needed by packages like minted
    --   '-verbose',         -- For debugging compilation issues
    -- },
}

-- SyncTeX: Tell vimtex which program to expect backward sync calls from (nvr)
vim.g.vimtex_compiler_progname = 'nvr'

-- Optional: Automatically open the viewer after the first successful compilation
vim.g.vimtex_view_automatic = 1 -- Set to 0 if you prefer manual opening via <leader>lv

-- Optional: LaTeX-specific conceals (requires 'conceallevel' and 'concealcursor' options set elsewhere, e.g., options.lua)
-- vim.g.vimtex_syntax_conceal_enable = 1

print("Vimtex configuration loaded (or attempted).")

-- Note: If configuration doesn't seem to apply, it might be related to Lua module loading order.
-- Wrapping the contents in vim.cmd([[ LUA_HERE ]]) or using vim.defer_fn might be needed in complex setups.
-- For this structure, it should generally work as `config` is applied after plugin load.
