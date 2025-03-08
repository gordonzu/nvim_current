return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',

  dependencies = {
    'nvim-lua/plenary.nvim',
		{
    	'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
			cond = function()
    		return vim.fn.executable 'make' == 1
    	end,
		},
  },

  config = function()

    require('telescope').setup {
      pickers = {
        find_files = {
          theme = "ivy"
        }
      },
      extensions = {
        fzf = {}
      }
    }

    require('telescope').load_extension('fzf')
		pcall(require('telescope').load_extension, 'fzf')
		pcall(require('telescope').load_extension, 'ui-select')
		local builtin = require 'telescope.builtin'

    vim.keymap.set('n', '<space>fh', builtin.help_tags)
    vim.keymap.set('n', '<space>fd', builtin.find_files)
		vim.keymap.set('n', '<space>fm', builtin.keymaps)
		vim.keymap.set('n', '<leader>fg', builtin.grep_string)
		vim.keymap.set('n', '<leader>sd', builtin.diagnostics)
		vim.keymap.set('n', '<leader><leader>', builtin.buffers)

    vim.keymap.set("n", "<space>en", function()
      require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)

    vim.keymap.set("n", "<space>ep", function()
      require('telescope.builtin').find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
      }
    end)

    vim.keymap.set("n", "<space>lo", function()
      require('telescope.builtin').find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("log"))
      }
    end)

		vim.keymap.set('n', '<leader>/', function()
			builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = '[/] Fuzzily search in current buffer' })


    require "gordonyx.telescope.multigrep".setup()

  end
}
--if true then return {} end
