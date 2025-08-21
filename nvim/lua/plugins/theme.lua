return {
  {
    "vimpostor/vim-lumen",
    lazy = false,
    priority = 10010,
    init = function()
      vim.cmd([[
				au User LumenLight echom 'tokyonight-day'
				au User LumenDark echom 'tokyonight-night'
			]])
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
