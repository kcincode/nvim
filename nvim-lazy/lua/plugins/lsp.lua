return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        elixirls = {},
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
        htmx = {
          filetypes = { "html", "templ" },
        },
        templ = {},
        intelephense = {},
        ruff = {},
        ruff_lsp = {},
        jinja_lsp = {
          filetypes = { "htmldjango" },
        },
        html = {
          filetypes = { "html", "templ" },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              includeLanguages = {
                templ = "html",
                htmldjango = "html",
              },
            },
          },
        },
      },
    },
  },
}
