return {
	{
		"NMAC427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup()
			opts = {
				auto_cmd = true,
				override_editorconfig = true,
			}
		end,
	},

	--   -- lsp
	--   "williamboman/mason.nvim",
	--   "williamboman/mason-lspconfig.nvim",
	-- --   {"williamboman/mason.nvim", config = function() require("mason").setup() end},
	-- --   {
	-- --       "williamboman/mason-lspconfig.nvim",
	-- -- config = function()
	-- -- 	require("mason-lspconfig").setup()
	-- --           require("lspconfig").lua_ls {}
	-- -- end,
	-- --       opts = {
	-- --           ensure_installed = { "lua_ls" }
	-- --       }
	-- --   },
	--   "neovim/nvim-lspconfig",
	--
	--   -- 'neovim/nvim-lspconfig',
	--   -- 'jose-elias-alvarez/null-ls.nvim',
	--   -- {
	--   --     'MunifTanjim/prettier.nvim',
	--   --     config = function()
	--   --         require("prettier").setup()
	--   --     end
	--   -- },
	--   'sbdchd/neoformat',
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				-- Customize or remove this keymap to your liking
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		-- Everything in opts will be passed to setup()
		opts = {
			-- Define your formatters
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { { "prettierd", "prettier" } },
			},
			-- Set up format-on-save
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
			-- Customize formatters
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
		},
		init = function()
			-- If you want the formatexpr, here is the place to set it
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
}
