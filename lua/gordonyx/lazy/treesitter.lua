--if true then return {} end
return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        modules = {},
        ignore_install = {},

        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "cmake",
          "dockerfile",
          "python",
          "lua",
          "vimdoc",
          "go",
          "html",
          "htmldjango",
          "json",
          "make",
          "ruby",
          "rust",
          "sql",
          "yaml",
          "xml",
          "css",
          "scala",
        },

        sync_install = false,
        auto_install = false,

        highlight = {
          enable = true,
          use_languagetree = true,
        },

        indent = { enable = true },
        additional_vim_regex_highlighting = false,
      })
    end,
  },
}
