local everforest = require('lualine.themes.everforest')

return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		event = 'VeryLazy',
		config = function()
			require('lualine').setup({
				options = {
					theme = everforest,
					section_separators = '',
					component_separators = '',
				},
				sections = {
					lualine_a = {
						function()
							local mode_map = {
								['n'] = 'N',
								['i'] = 'I',
								['v'] = 'V',
								['V'] = 'VL',
								[''] = 'VB', -- Visual Block
								['c'] = 'C',
								['s'] = 'S',
								['S'] = 'SL',
								[''] = 'SB', -- Select Block
								['R'] = 'R',
								['r'] = 'r',
								['!'] = 'SH',
								['t'] = 'T',
							}
							return mode_map[vim.api.nvim_get_mode().mode] or 'UNK' 
						end,
					},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {
						{
							'filename',
							path = 3
						},
					},
					lualine_x = {'encoding', 'fileformat', 'filetype'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
			})
		end,
	},
}


























