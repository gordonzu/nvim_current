--if true then return {} end

return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = {
            options = {
                icons_enabled = true,
                theme = "gruvbox-material",
                component_separators = "|",
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = {
                    "buffers",
                }
            }
        },
    },
}
