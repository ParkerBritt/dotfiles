return {
    "uga-rosa/ccc.nvim",
    config = function()
        vim.opt.termguicolors = true
        local ccc = require("ccc")
        local mapping = ccc.mapping

        ccc.setup ({
            highlighter = {
                auto_enable = true,
                lsp = true,
            },
        })
    end,
}
