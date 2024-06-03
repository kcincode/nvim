return { -- Highlight, edit, and navigate code
"nvim-treesitter/nvim-treesitter",
build = ":TSUpdate",
opts = {
    ensure_installed = {
        "bash",
        "c",
        "html",
        "lua",
        "luadoc",
        "markdown",
        "vim",
        "vimdoc",
        "python",
        "typescript",
        "javascript",
        "php",
        "json",
        "css",
        "yaml",
        "toml",
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { "ruby" },
    },
    indent = { enable = true, disable = { "ruby" } },
},
config = function(_, opts)
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    -- Prefer git instead of curl in order to improve connectivity in some environments
    require("nvim-treesitter.install").prefer_git = true
    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup(opts)

    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
end,
},
{
"nvim-tree/nvim-tree.lua",
dependencies = "nvim-tree/nvim-web-devicons",
config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
        view = {
            width = 35,
            relativenumber = true,
        },
        -- change folder arrow icons
        renderer = {
            indent_markers = {
                enable = true,
            },
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "", -- arrow when folder is closed
                        arrow_open = "", -- arrow when folder is open
                    },
                },
            },
        },
        -- disable window_picker for
        -- explorer to work well with
        -- window splits
        actions = {
            open_file = {
                window_picker = {
                    enable = false,
                },
            },
        },
        filters = {
            custom = { ".DS_Store" },
        },
        git = {
            ignore = false,
        },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set(
        "n",
        "<leader>ff",
        "<cmd>NvimTreeFindFileToggle<CR>",
        { desc = "Toggle file explorer on current file" }
    ) -- toggle file explorer on current file
    keymap.set("n", "<leader>fc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>fr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
end,
}
