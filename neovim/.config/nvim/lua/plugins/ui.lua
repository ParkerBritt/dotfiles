return {
	{ -- color scheme
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require('onedark').setup {
				style = 'cool'
			}
			require('onedark').load()
		end
	},
	{ -- indent guides -> |
	    "lukas-reineke/indent-blankline.nvim",
	},
}
