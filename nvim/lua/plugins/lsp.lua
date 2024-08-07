return {

  { import = "lazyvim.plugins.extras.lang.typescript" },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            pyright = {
              disableOrganizeImports = true, -- Using Ruff
            },
            python = {
              analysis = {
                ignore = { "*" }, -- Using Ruff
                typeCheckingMode = "off",
              },
            },
          },
        },
        intelephense = {},
        ruff = {},
        jinja_lsp = {
          filetypes = { "htmldjango" },
        },
        tailwindcss = {},
      },
    },
  },
}
