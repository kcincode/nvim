return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "go",
      "html",
      "elixir",
      "eex",
      "heex",
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
      "php",
    },
    highlight = {
      enable = true,
    },
    blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    },
  },
  dependencies = {
    "vrischmann/tree-sitter-templ",
  },
}
