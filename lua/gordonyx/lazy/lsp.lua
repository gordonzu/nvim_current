--if true then return {} end

return {
	{
		"neovim/nvim-lspconfig",

-- dependencies ----------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

		dependencies = {
			'williamboman/mason.nvim',
	    'williamboman/mason-lspconfig.nvim',
	    'saghen/blink.cmp',
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

-- config ------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

		config = function()
	    local capabilities = require('blink.cmp').get_lsp_capabilities()
	    require("lspconfig").lua_ls.setup { capabilites = capabilities }

	    vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(args)
					local c = vim.lsp.get_client_by_id(args.data.client_id)
					if not c then return end
				end,
	    })

-- mason ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
	    require('mason').setup()
	    require('mason-lspconfig').setup({
				ensure_installed = {
					"lua_ls",
					"gopls",
					"rust_analyzer",
					"pyright",
					"clangd",
				},
				automatic_installation = false,

				handlers = {
					function(server_name) -- default handler (optional)
						require("lspconfig")[server_name].setup {
							capabilities = capabilities
						}
					end,

					["lua_ls"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.lua_ls.setup {
							capabilities = capabilities,
							settings = {
								Lua = {
									runtime = { version = "Lua 5.1" },
									diagnostics = {
										globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
										disable = { "different-requires" }
									}
								}
							}
						}
					end,

					["gopls"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.gopls.setup {
							capabilities = capabilities,
							settings = {
								gopls = {
									analyses = {
										unusedparams = true,
									},
									staticcheck = true,
									gofumpt = true,
								}
							}
						}
					end,

					["pyright"] = function()
						local util = require("lspconfig/util")
						local path = util.path
						local lspconfig = require("lspconfig")
						lspconfig.pyright.setup {
							capabilities = capabilities,
							before_init = function(_, config)
								DEFAULT_VENV_PATH = path.join(vim.env.HOME,
									"src/python/virtualenvs",
									"nvim-env",
									"bin",
									"python")
								config.settings.python.pythonPath = DEFAULT_VENV_PATH
							end,
						}
					end,

					["clangd"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.clangd.setup {
							capabilities = capabilities,
						}
					end,
				} -- end handlers 
			}) -- end mason-lspconfig setup

-- end mason -------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

		end, -- end nvim-lspconfig config function  
	} -- end nvim-lspconfig 
}





