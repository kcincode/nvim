return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim", version = "^1.0.0" },
  lazy = true,
  opts = {
    formatters_by_ft = {
      htmldjango = { "djlint" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      elixir = { "mix" },
      eelixir = { "mix" },
      heex = { "mix" },
      surface = { "mix" },
      blade = { "blade-formatter" },
      php = { "pint", "php-cs-fixer" },
    },
  },
}
