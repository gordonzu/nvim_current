if true then return {} end

local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<C-n>", vim.cmd.NvimTreeToggle)
map("n", "<leader>x", vim.cmd.bd)
map("n", "<leader>]", vim.cmd.bnext)
map("n", "<leader>[", vim.cmd.bprev)
