-----------------------------------------------------------
-- Route:............system/interface/fonts.nix
-- Type:.............Module
-- Created by:.......Pablo Aguirre
-----------------------------------------------------------

--------------------------------------------
-- user/term/nvim/nvim.nix module
--------------------------------------------
--------------------------------------------
-- Startup
--------------------------------------------

-- Disable nvim intro
-- vim.o.shortmess:append "sI"

--------------------------------------------
-- General settings
--------------------------------------------

-- Set clipboard to use the system clipboard
vim.o.clipboard = 'unnamedplus'

-- Set encoding to UTF-8
vim.o.encoding = 'utf-8'

-- Set file encoding to UTF-8
vim.o.fileencoding = 'utf-8'

-- Enable mouse support
vim.o.mouse = 'a'

-- Set global leader key (space)
vim.g.mapleader = ' '

-- Set local leader key
vim.g.maplocalleader = ' '

-- Don't use swap file
vim.o.swapfile = false

-- Set time to wait for triggering an event (in ms)
vim.o.updatetime = 300

--------------------------------------------
-- UI settings
--------------------------------------------

-- Enable 24-bit RGB colors
vim.o.termguicolors = true

-- Enable folding (default 'foldmarker')
vim.o.foldmethod = 'marker'

-- Highlight matching parenthesis
vim.o.showmatch = true

-- Show absolute line number
vim.o.number = true

-- Show relative line number
vim.o.relativenumber = true

-- Show sign column
vim.o.signcolumn = 'yes'

-- Set global statusline
vim.o.laststatus = 3

--------------------------------------------
-- Tabs and indentation
--------------------------------------------

-- Enable autoindent
vim.o.autoindent = true

-- Use smart indentation
vim.o.smartindent = true

-- Enable smart tab behavior
vim.o.smarttab = true

-- Set number of spaces for each tab
vim.o.tabstop = 2

-- Set number of spaces when shifting text
vim.o.shiftwidth = 2

--------------------------------------------
-- Memory, CPU
--------------------------------------------

-- Enable background buffers
vim.o.hidden = true

-- Remember N lines in history
vim.o.history = 100           

-- Faster scrolling
vim.o.lazyredraw = true

-- Max column for syntax highlight
vim.o.synmaxcol = 240

-- ms to wait for trigger an event
vim.o.updatetime = 250

--------------------------------------------
-- Keybindings
--------------------------------------------

--------------------------------------------
-- General Keybindings
--------------------------------------------

-- Disable search highlight on pressing <Leader><space>
vim.keymap.set('n', '<Leader><space>', ':noh<CR>', { noremap = true, silent = true, desc = 'Clear search highlight' })

-- Toggle line numbers with <Leader>n
vim.keymap.set('n', '<Leader>n', ':set nu! rnu!<CR>', { noremap = true, silent = true, desc = 'Toggle line numbers' })

--------------------------------------------
-- Plugin-Specific Keybindings
--------------------------------------------


-- Telescope (fuzzy finder)
--------------------------------------------

-- Open file finder with <Leader>ff
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Find files' })

-- Search text within project with <Leader>fg
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = 'Grep text in project' })

-- List buffers with <Leader>fb
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = 'List open buffers' })

-- Help tags with <Leader>fh
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true, desc = 'Help tags' })


-- Telescope (fuzzy finder)
--------------------------------------------

-- Go to previous diagnostic with [d
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = 'Go to previous diagnostic' })

-- Go to next diagnostic with ]d
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Go to next diagnostic' })

-- Show hover information with <Leader>k
vim.keymap.set('n', '<Leader>k', vim.lsp.buf.hover, { noremap = true, silent = true, desc = 'Show hover information' })

-- Format code with <Leader>f
vim.keymap.set('n', '<Leader>f', vim.lsp.buf.format, { noremap = true, silent = true, desc = 'Format code' })

-- Rename symbol with <Leader>r
vim.keymap.set('n', '<Leader>r', vim.lsp.buf.rename, { noremap = true, silent = true, desc = 'Rename symbol' })


-- Comment.nvim (Commenting)
--------------------------------------------

-- Toggle comment for the selected lines (Visual mode)
vim.keymap.set('v', '<Leader>c', ":lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { noremap = true, silent = true, desc = 'Toggle comment' })

-- Toggle comment for the current line (Normal mode)
vim.keymap.set('n', '<Leader>c', ":lua require('Comment.api').toggle.linewise.current()<CR>", { noremap = true, silent = true, desc = 'Toggle comment' })


-- Multicursors.nvim (Multiple cursors)
--------------------------------------------

-- Start multicursor with <Leader>m
-- vim.keymap.set('n', '<Leader>m', '<cmd>MCstart<cr>', { noremap = true, silent = true, desc = 'Create a selection for selected text or word under the cursor' })


-- Treesitter (Syntax highlighting)
--------------------------------------------

-- Toggle Treesitter folding with <Leader>z
-- vim.keymap.set('n', '<Leader>z', ':set foldmethod=expr foldexpr=nvim_treesitter#foldexpr()<CR>', { noremap = true, silent = true, desc = 'Toggle Treesitter folding' })


-- LuaSnip (Snippets)
--------------------------------------------

-- Expand or jump to next snippet with <Tab>
-- vim.keymap.set('i', '<Tab>', "lua equire('luasnip').expand_or_jump()<CR>", { noremap = true, silent = true, expr = true, desc = 'Expand or jump to next snippet' })

-- Jump to previous snippet with <S-Tab>
-- vim.keymap.set('i', '<S-Tab>', "lua require('luasnip').jump(-1)<CR>", { noremap = true, silent = true, expr = true, desc = 'Jump to previous snippet' })


-- Indent Lines (Add lines to indents)
--------------------------------------------

-- Toggle indent lines with <Leader>i
vim.keymap.set('n', '<Leader>i', ':IBLToggle<CR>', { noremap = true, silent = true, desc = 'Toggle indent lines' })
