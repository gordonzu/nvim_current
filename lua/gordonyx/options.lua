--if true then return {} end

local o = vim.o
o.nu=true
o.rnu=true
o.ruler=true
o.tabstop=4
o.softtabstop=0
o.shiftwidth=4
o.smarttab=true
o.expandtab=false
o.smartindent=true
o.wrap=true
o.clipboard="unnamedplus"

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
