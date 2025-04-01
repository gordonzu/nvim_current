vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = false
vim.opt.textwidth = 80
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt_global.shortmess:remove("F")

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.cmd([[
  highlight Comment cterm=NONE gui=NONE
  highlight Function cterm=NONE gui=NONE
  highlight Statement cterm=NONE gui=NONE
  highlight Type cterm=NONE gui=NONE
  highlight Keyword cterm=NONE gui=NONE
  highlight Conditional cterm=NONE gui=NONE
  highlight Repeat cterm=NONE gui=NONE
  highlight Label cterm=NONE gui=NONE
  highlight Operator cterm=NONE gui=NONE
  highlight Exception cterm=NONE gui=NONE
]])



