return {
{
       'rebelot/kanagawa.nvim',
       priority = 1000, -- Make sure to load this before all the other start plugins.
       config = function()
         ---@diagnostic disable-next-line: missing-fields
         require('kanagawa').setup {
           styles = {
             comments = { italic = true }, -- Disable italics in comments
           },
         }

         vim.cmd.colorscheme 'kanagawa'
       end,
     },

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
}
