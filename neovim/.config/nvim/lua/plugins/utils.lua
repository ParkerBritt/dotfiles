return {

	"nvim-lua/plenary.nvim",
	{
	  "jiaoshijie/undotree",
	  dependencies = "nvim-lua/plenary.nvim",
	  config = true,
	  keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	  },
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		 config = function()
		 	require("Comment").setup()
		 end
	},
	-- flash
	{
	  "folke/flash.nvim",
	  event = "VeryLazy",
	  ---@type Flash.Config
	  opts = {
		modes = {
			search = {
				enabled = false,
			},
		},
	  },
	  -- stylua: ignore
	  keys = {
		{ "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
		{ "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
		{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
		{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
		{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
	  },
	},
	-- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "live grep"})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help tags"})
		end
    },
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	  end,
	}
}

