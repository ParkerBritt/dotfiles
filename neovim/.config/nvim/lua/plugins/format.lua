return {
    {
	"NMAC427/guess-indent.nvim",
	config = function()
	    require('guess-indent').setup()
        opts = {
            auto_cmd = true,
            override_editorconfig = true
        }
	end,
    },

    -- lsp
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  --   {"williamboman/mason.nvim", config = function() require("mason").setup() end},
  --   {
  --       "williamboman/mason-lspconfig.nvim",
		-- config = function()
		-- 	require("mason-lspconfig").setup()
  --           require("lspconfig").lua_ls {}
		-- end,
  --       opts = {
  --           ensure_installed = { "lua_ls" }
  --       }
  --   },
    "neovim/nvim-lspconfig",

    -- 'neovim/nvim-lspconfig',
    -- 'jose-elias-alvarez/null-ls.nvim',
    -- {
    --     'MunifTanjim/prettier.nvim',
    --     config = function()
    --         require("prettier").setup()
    --     end 
    -- },
    'sbdchd/neoformat',


    


}
