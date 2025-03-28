vim.api.nvim_create_autocmd("BufEnter", {
    pattern =  {
        "*.lua",
        "*.html",
        "*.scala",
        "*.sbt",
    },
    callback = function()
        vim.cmd "set tabstop=4"
        vim.cmd "set shiftwidth=4"
    end,
})

--[[ vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.scala",
  callback = function()
    vim.cmd "set tabstop=4"
    vim.cmd "set shiftwidth=4"
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.html",
  callback = function()
    vim.cmd "set tabstop=4"
    vim.cmd "set shiftwidth=4"
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.sbt",
  callback = function()
    vim.cmd "set tabstop=4"
    vim.cmd "set shiftwidth=4"
  end,
})
]]--
