return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ltex = {
        filetypes = {
            "markdown",
            "tex",
            "plaintex",
            -- "typst" ,
        },
        settings = {
          ltex = {
            language = "en-US",
          },
        },
      },
    },
  },
}
