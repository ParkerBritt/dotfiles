return {
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
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					globalstatus = false,
					icons_enabled = true,
					theme = "auto",
					section_separators = { left = "", right = "" },
					component_separators = "",
					disabled_filetypes = { "oil" },
				},
				sections = {
					lualine_a = {
						{
							"mode",
							separator = { left = "", right = "" },
						},
					},
					lualine_b = {
						{
							"branch",
							separator = { left = "", right = "" },
						},
					},
					lualine_c = {
						{
							"diff",
							symbols = {
								added = " ",
								modified = " ",
								removed = " ",
							},
						},
						{
							"diagnostics",
							sources = {
								"nvim_diagnostic",
							},
						},
						{
							"filename",
							path = 1,
							shorting_target = 30,
							symbols = {
								modified = " 󰎜",
								readonly = " 󰈡",
								unnamed = " 󰎞",
							},
						},
					},
					lualine_x = { "filetype" },
					lualine_y = { "progress" },
					lualine_z = {
						{
							"location",
							separator = { left = "", right = "" },
						},
					},
				},
				tabline = {
					lualine_b = {
						{
							"buffers",
							separator = { left = "", right = "" },
							show_modified_status = false,
							buffers_color = {
								active = "lualine_b_normal",
								inactive = "lualine_c_inactive",
							},
						},
					},
					lualine_z = {
						{
							"hostname",
							separator = { left = "", right = "" },
						},
					},
				},
			})
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
		},
	},

	{
        "akinsho/bufferline.nvim", version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup{}
        end,
    },
}
