return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              disableOrganizeImports = true,
              venvPath = "$HOME/.virtualenvs",
              analysis = {
                typeCheckingMode = "off",
                inlayHints = {
                  callArgumentNames = true,
                },
              },
            },
            python = {
              analysis = {
                ignore = { "*" },
              },
            },
          },
        },
      },
    },
  },
}
