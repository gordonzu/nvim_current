print("Options")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.tabstop=4
vim.opt.softtabstop=0
vim.opt.shiftwidth=4
vim.opt.smarttab=true
vim.opt.expandtab=false
vim.opt.smartindent=true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt_global.shortmess:remove("F")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "scala",
	command = "setlocal shiftwidth=2 tabstop=2"
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	command = "setlocal shiftwidth=2 tabstop=2"
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	command = "setlocal shiftwidth=2 tabstop=2"
})

