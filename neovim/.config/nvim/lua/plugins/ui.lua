return {
	{ -- color scheme
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require('onedark').setup {
				style = 'cool',
				transparent = true
			}
			require('onedark').load()
		end,
	},
	{ -- indent guides -> |
	    "lukas-reineke/indent-blankline.nvim",
	},
	{
		"echasnovski/mini.indentscope",
		opts = {
		  -- symbol = "▏",
		  symbol = "│",
		  options = { try_as_border = true },
		},
	},

	"nvim-tree/nvim-web-devicons",
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require("lualine").setup()
		end,
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	  end,
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	},
}
