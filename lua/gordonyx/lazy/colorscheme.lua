return {

--[[     {
        'f4z3r/gruvbox-material.nvim',
        name = 'gruvbox-material',
        lazy = false,
        --priority = 1000,
        opts = {},
    },
 ]]

    {
        "thesimonho/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "w0ng/vim-hybrid",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            --vim.cmd("colorscheme hybrid")
        end,
    },

    {
       "idr4n/github-monochrome.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            --vim.cmd("set background=light")
            --vim.cmd("colorscheme github-monochrome")
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        config = function()
            --vim.cmd([[set background=dark]])
            --vim.cmd([[colorscheme kanagawa]])
        end,
    },

--[[     {
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
 ]]
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            --vim.cmd("colorscheme miasma")
        end,
    },

    {
        "slugbyte/lackluster.nvim",
        lazy = false,
        priority = 1000,
        init = function()
            vim.cmd.colorscheme("lackluster-dark")
            -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
            -- vim.cmd.colorscheme("lackluster-mint")
        end,
    },

}
