local options = {
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    lua = { "stylua" },
    python = { "black", "isort" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 15000,
    lsp_fallback = false,
  },
}

require("conform").setup(options)
