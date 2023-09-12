return {
	{
		"nvim-lualine/lualine.nvim",
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },


	},
	{
		"vladdoster/remember.nvim",
		 config = function()
		 	require("remember")
		 end
	}

}
