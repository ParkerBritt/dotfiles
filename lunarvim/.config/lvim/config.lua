lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

vim.o.timeoutlen = 300
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.number = true
vim.o.relativenumber = true

vim.o.undofile = true

vim.opt.tabstop = 4       -- Set the number of columns for a tab
vim.opt.shiftwidth = 4    -- Set the number of spaces per indentation level
vim.opt.softtabstop = 4   -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true  -- Use spaces instead of tabs

lvim.plugins = {
    {
      "smjonas/inc-rename.nvim",
      opts = {}
    },
	{
	  "jiaoshijie/undotree",
	  dependencies = "nvim-lua/plenary.nvim",
	  config = true,
	  keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	  },
	},
	{
		"ethanholz/nvim-lastplace",
		config = true,
		opts = {
			lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
			lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
			lastplace_open_folds = true,
		},
	},
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
      }
    },
    {'akinsho/git-conflict.nvim', version = "*", config = true},
    {
        'chomosuke/typst-preview.nvim',
        lazy = false, -- or ft = 'typst'
        version = '1.*',
        opts = {}, -- lazy.nvim will implicitly calls `setup {}`
    },
}
