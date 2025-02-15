return {

    {
        "w0ng/vim-hybrid",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            --vim.cmd("set background=light")
            --vim.cmd("colorscheme hybrid")
        end
    },

    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({
                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none'
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {}, -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = true, -- darker colors for diagnostic
                    undercurl = true,   -- use undercurl instead of underline for diagnostics
                    background = true,    -- use background color for virtual text
                },
            })

            --vim.cmd("set background=light")
            --vim.cmd("colorscheme onedark")
        end
    },

    {
        "ishan9299/nvim-solarized-lua",
    },

    {
        "Tsuzat/NeoSolarized.nvim",
        --lazy = false, -- make sure we load this during startup if it is your main colorscheme
        --priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            --vim.cmd [[ colorscheme NeoSolarized ]]
        end
    },

    {
        "projekt0n/github-nvim-theme", name = "github-theme"
    },

    {
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd([[colorscheme kanagawa]])
        end,
    },

    {
        "aktersnurra/no-clown-fiesta.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("no-clown-fiesta").setup({
                styles = {
                    type = { bold = true },
                    lsp = { underline = false },
                    match_paren = { underline = true },
                },
            })
        end,
    },

    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            --require("nordic").load()
        end,
    },

    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd("colorscheme miasma")
        end,
    },

    {
        "marko-cerovac/material.nvim",
        priority = 1000,

        config = function()
            require("material").setup({
                contrast = {
                    terminal = true,
                    sidebars = true,
                    floating_windows = true,
                    cursor_line = false,
                    non_current_windows = true,
                    filetypes = {},
                },
                styles = {
                    comments = { italic = true },
                    strings = {},
                    keywords = { underline = true },
                    functions = { italic = true },
                    variables = {},
                    operators = {},
                    types = {},
                },
                plugins = {
                    "dap",
                    -- "dashboard",
                    "gitsigns",
                    -- "hop",
                    -- "indent-blankline",
                    -- "lspsaga",
                    -- "mini",
                    -- "neogit",
                    -- "neorg",
                    "nvim-cmp",
                    -- "nvim-navic",
                    "nvim-tree",
                    "nvim-web-devicons",
                    -- "sneak",
                    "telescope",
                    -- "trouble",
                    --"which-key",
                },
                disable = {
                    colored_cursor = false,
                    borders = true,
                    background = false,
                    term_colors = false,
                    eob_lines = false
                },
                high_visibility = {
                    lighter = false,
                    darker = false
                },
                lualine_style = "default",
                async_loading = true,
                custom_colors = nil,
                custom_highlights = {},

            })

            --vim.cmd([[colorscheme material]])
        end,
    },
}
