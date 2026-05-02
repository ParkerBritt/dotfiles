return {
  "stevearc/conform.nvim",
  opts = {
    -- LazyVim will use these options when formatting with the conform.nvim formatter
    default_format_opts = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
    },
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      python = { "black" },
      json = { "jq" },
      cpp = { "clang_format" },
      c = { "clang_format" },
    },
    -- The options you set here will be merged with the builtin formatters.
    -- You can also define any custom formatters here.
    formatters = {
      injected = { options = { ignore_errors = true } },
      black = {
        prepend_args = { "--line-length", "100" },
      },
      clang_format = {
        prepend_args = { "--style={IndentWidth: 4, TabWidth: 4, ColumnLimit: 100}" },
      },
    },
  },
}
