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
    "neovim/nvim-lspconfig",





}
