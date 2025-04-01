return {
{
	'lewis6991/gitsigns.nvim',
	config = function()
		require('gitsigns').setup({
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
			signcolumn = true,
--[[ 			on_attach = function(buffer)
				local gs = package.loaded.gitsigns
				print("Gitsigns attached to buffer: ", buffer)
				vim.api.nvim_buf_set_option(buffer, "signcolumn", "yes")
			end,
			debug_mode = true, ]]
  		})

--[[ 		vim.api.nvim_create_autocmd("BufReadPost", {
			callback = function()
				vim.wo.signcolumn = "yes"
				print("BufReadPost triggered, signcolumn set to:", vim.wo.signcolumn)
			end,
		})

		vim.api.nvim_create_autocmd("User", {
			pattern = "Gitsigns",
			callback = function(args) 
				print("Gitsigns event:", vim.inspect(args))
			end,
		}) ]]
	end
}
}




