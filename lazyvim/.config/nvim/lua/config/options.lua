-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.opt.tabstop = 4 -- Set the number of columns for a tab
vim.opt.shiftwidth = 4 -- Set the number of spaces per indentation level
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Line length indicator
vim.opt_local.colorcolumn = "100"

