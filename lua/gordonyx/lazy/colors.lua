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
        vim.cmd("set background=dark")
        vim.cmd("colorscheme kanagawa")
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
  }
}

