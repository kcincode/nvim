-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "go",
      "javascript",
      "typescript",
      "html",
      "css",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
