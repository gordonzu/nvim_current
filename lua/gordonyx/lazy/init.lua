return {
  {
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
      "lukas-reineke/indent-blankline.nvim",
      --[[omnisharp_monoin = "ibl",
      ---@module "ibl"
      ---@type ibl.config 
      ]]
      opts = {
        char = "",
        context_char = "BB",
        enabled = false
      },
      config = function()
        local ibl = require("ibl")
        ibl.setup()
      end,
      keys = {
        {
          "<leader>ii",
          "<cmd>IBLToggle<cr>",
          desc = "Indent lines toggle",
        }
      }
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

    {
      "folke/trouble.nvim",
      opts = {}, -- for default options, refer to the configuration section for custom setup.
      cmd = "Trouble",
      keys = {
        {
          "<leader>xx",
          "<cmd>Trouble diagnostics toggle<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>xX",
          "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
          desc = "Buffer Diagnostics (Trouble)",
        },
        {
          "<leader>cs",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>cl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>xL",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>xQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    },
  },
}
-- if true then return {} end


