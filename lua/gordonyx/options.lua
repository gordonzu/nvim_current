--if true then return {} end

local o = vim.o
o.nu = true
o.rnu = true
o.ruler = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = true
o.clipboard = "unnamedplus"

vim.opt_global.shortmess:remove("F")
    
