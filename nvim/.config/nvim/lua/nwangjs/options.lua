-- [[ Setting options ]]
-- See `:help vim.opt` or `:help option-list`

-- 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = false

-- Absolute line numbers
vim.opt.number = true
-- Relative line numbers
-- vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- No need to show mode, already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Persistent undo history
vim.opt.undofile = true

-- Case-insensitive searching unless \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live
vim.opt.inccommand = 'split'

-- Highlight current line
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Raise dialog to save the current file(s) when performing operation that would fail due to unsaved changes
vim.opt.confirm = true
