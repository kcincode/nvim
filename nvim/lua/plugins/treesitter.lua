return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "go",
      "html",
      "elixir",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "htmldjango",
    },
    highlight = {
      enable = true,
    },
  },
  dependencies = {
    "vrischmann/tree-sitter-templ",
  },
}
