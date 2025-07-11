return {
  "folke/snacks.nvim",
  opts = {
    notifier = { enabled = true },

    -- show hidden files in snacks.explorer
    picker = {
      sources = {
        explorer = {
          -- show hidden files like .env
          hidden = true,
          exclude = { "node_modules", ".git" },
        },
      },
    },
  },
}
