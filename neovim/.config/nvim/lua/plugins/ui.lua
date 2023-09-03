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

	"nvim-tree/nvim-web-devicons",
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require("lualine").setup()
		end,
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
}
