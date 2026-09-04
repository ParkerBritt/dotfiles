return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        qmlls = {
          cmd = { "/usr/lib64/qt6/bin/qmlls" },
        },
      },
    },
  },
}
