return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('kanagawa').setup {
        styles = {
          comments = { italic = true },
        },
      }
    end,
  },

  {
    "tinted-theming/tinted-vim",
  },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd("colorscheme miasma")
    end,
  },
}

