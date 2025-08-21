return {
  {
    "vimpostor/vim-lumen",
    lazy = false,
    priority = 10010,
    init = function()
      vim.cmd([[
				au User LumenLight echom 'catppucin-latte'
				au User LumenDark echom 'catppuccin-mocha'
			]])
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 10000 },
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      if (vim.g.colors_name or ""):find("catppuccin") then
        opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      if vim.o.background == "light" then
        opts.colorscheme = "catppuccin-latte"
      else
        opts.colorscheme = "catppuccin-mocha"
      end
    end,
  },
}
