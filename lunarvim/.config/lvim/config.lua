lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<CR>"
vim.o.timeoutlen = 300

lvim.plugins = {
	{
	  "jiaoshijie/undotree",
	  dependencies = "nvim-lua/plenary.nvim",
	  config = true,
	  keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	  },
	},
}
