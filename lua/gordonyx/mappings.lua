require('gordonyx.lazy.colors')
vim.g.mapleader = " "

-- [[ Basic Keymaps ]]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set("n", "<leader>x", vim.cmd.bd)
vim.keymap.set("n", "<leader>]", vim.cmd.bnext)
vim.keymap.set("n", "<leader>[", vim.cmd.bprev)
vim.keymap.set("n", "<C-t>", ":Neotree toggle<CR>")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-o>", "<CMD>Oil --float .<CR>", { desc = "Open floating window" })


-- [[ Toggle colorschemes ]]
vim.keymap.set('n', '<C-z>',
    function()
        vim.cmd('set background=light')
        vim.cmd('colorscheme default')
    end
)

vim.keymap.set('n', '<C-x>',
    function()
        vim.cmd('set background=dark')
        vim.cmd('colorscheme kanagawa-dragon')
    end
)

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo ""<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo ""<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo ""<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo ""<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

