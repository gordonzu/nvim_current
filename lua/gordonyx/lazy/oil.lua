return {
    {
        "stevearc/oil.nvim",
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup({
				columns = {
					"icon",
					"permissions",
					"size",
					"mtime",
				},
                default_file_explorer = true,
                restore_win_options = true,
                skip_confirm_for_simple_edits = true,
            })
        end,
    },
}


