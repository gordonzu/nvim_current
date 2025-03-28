return {

    {
        'morhetz/gruvbox',
        name = 'gruvbox',
        priority = 1000,
        lazy = false,
    },

    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false,
        priority = 1000,
        config = function()
            require('github-theme').setup({
                -- ...
            })
            --vim.cmd('colorscheme github_dark')
        end,
    },

    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require('kanagawa').setup {
                styles = {
                    commentStyle = { italic = true },
                    keywordStyle = { italic = false },
                },
            }
            --vim.cmd("set background=dark")
            --vim.cmd("colorscheme kanagawa")
        end,
    },

    {
        'neanias/everforest-nvim',
        version = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("everforest").setup({
                --vim.cmd("colorscheme miasma")
            })
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
        "w0ng/vim-hybrid",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd("set background=light")
            --vim.cmd("colorscheme hybrid")
        end,
    },

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}

