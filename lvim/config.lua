-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 250
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

lvim.format_on_save.enabled = true
lvim.builtin.telescope.extensions.fzf = {
  fuzzy = true,                   -- false will only do exact matching
  override_generic_sorter = true, -- override the generic sorter
  override_file_sorter = true,    -- override the file sorter
  case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
  -- the default case_mode is "smart_case"
}
require('telescope').load_extension('fzf')


local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  { name = "prettier", filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "json", "css" } },
  { name = "djlint",   filetypes = { "htmldjango" } }
}

-- local lspconfig = require "lspconfig"
-- lspconfig.pyright.setup = {
--   python = {
--     analysis = { typeCheckingMode = "off" }
--   }
-- }

-- Copilot plugins are defined below:
lvim.plugins = {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup({
        suggestion = { enabled = false },
        panel = { enabled = false }
      })
    end
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      custom_filetypes = {
        "html",
        "css",
        "php",
        "twig",
        "vue",
        "svelte",
        "astro",
        "htmldjango",
        "javascriptreact",
        "typescriptreact",
      },
    },
  }, {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "luckasRanarison/tailwind-tools.nvim",
    "onsails/lspkind-nvim",
  },
  opts = function()
    return {
      formatting = {
        format = require("lspkind").cmp_format({
          before = require("tailwind-tools.cmp").lspkind_format
        }),
      }
    }
  end
},
}

-- Below config is required to prevent copilot overriding Tab with a suggestion
-- when you're just trying to indent!
local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
end
local on_tab = vim.schedule_wrap(function(fallback)
  local cmp = require("cmp")
  if cmp.visible() and has_words_before() then
    cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
  else
    fallback()
  end
end)
lvim.builtin.cmp.mapping["<Tab>"] = on_tab
