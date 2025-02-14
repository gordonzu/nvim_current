 return {
    {"echasnovski/mini.icons", version = "*"},
    {"numToStr/Comment.nvim", opts = {}},
    {
        "saecki/crates.nvim",
        ft = {"rust", "toml"},
        config = function(_, opts)
            local crates = require("crates")
            crates.setup(opts)
            crates.show()
        end,
    },

    {
        "tpope/vim-sleuth",
        event = "VeryLazy",
    },

    {
        "mbbill/undotree",
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    },

    {
        "nvim-tree/nvim-web-devicons",
        lazy = true
    },

}
