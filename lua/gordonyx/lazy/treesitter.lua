return {
{ -- Highlight, edit, and navigate code
       'nvim-treesitter/nvim-treesitter',
       build = ':TSUpdate',
       main = 'nvim-treesitter.configs', -- Sets main module to use for opts
       opts = {
         ensure_installed = { 'bash', 'c', 'cpp', 'diff', 'html', 'lua', 'markdown', 'python','scala', 'go', 'vimdoc' },
         auto_install = true,
         highlight = {
           enable = true,
           -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
           --  If you are experiencing weird indenting issues, add the language to
           --  the list of additional_vim_regex_highlighting and disabled languages for indent.
           additional_vim_regex_highlighting = false,
         },
         indent = { enable = true, disable = { 'ruby' } },
       },
     },
}
