-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local keymap = vim.keymap.set

-- Keybinds to make split navigation easier
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- Clear search highlights when pressing <Esc> in normal mode
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')