return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
  },
}
