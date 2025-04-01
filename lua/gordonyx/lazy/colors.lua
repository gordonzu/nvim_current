return {

--[[     {
        "thesimonho/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
 ]]
--[[     {
        'shaunsingh/nord.nvim',
        name = 'nord',
        priority = 1000,
        lazy = false,
        config = function()
            vim.g.nord_italic = false
            vim.g.nord_contrast = true
            --vim.cmd("set background=dark")
            --vim.cmd("colorscheme nord")
        end,
    },
 ]]
--[[     {
        'morhetz/gruvbox',
        name = 'gruvbox',
        priority = 1000,
        lazy = false,
    },
 ]]
--[[     {
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
 ]]
    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        config = function()
            require('kanagawa').setup ({
               styles = {
                    commentStyle    = { italic = true },
                    keywordStyle    = { italic = false },
                    functionStyle   = { italic = false },
                    statementStyle  = { italic = false },
                    typeStyle       = { italic = false },
                },

                overrides = function()
                    return {
                        ['@variable.builtin'] = { italic = false },
                    }
                end
            })
            vim.cmd("set background=dark")
            vim.cmd("colorscheme kanagawa-dragon")
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

--[[     {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd("colorscheme miasma")
        end,
    },
 ]]
 --[[    {
        "w0ng/vim-hybrid",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd("set background=light")
            --vim.cmd("colorscheme hybrid")
        end,
    },
 ]]
--    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}

