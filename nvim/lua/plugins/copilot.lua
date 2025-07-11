return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
    filetypes = {
      elixir = true,
      python = true,
      go = true,
      typescript = true,
      javascript = true,
      php = true,
      help = true,
      lua = true,
    },
  },
}
