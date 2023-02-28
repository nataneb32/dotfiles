function lsp_config()
	local cmp = require("cmp")
	local mason = require("mason")
	local mason_lspconfig = require("mason-lspconfig")

	-- Setup Mason
	mason.setup()
	mason_lspconfig.setup()

	-- Setup Cmp
	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end
		},
		mapping = {
			["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<Down>"] = function()
				if cmp.visible() then cmp.select_next_item() end
			end,
			["<Up>"] = function()
				if cmp.visible() then cmp.select_prev_item() end
			end,
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true
			})
		},
		sources = {
			{ name = "nvim_lsp" }, { name = "nvim_lua" }, { name = "luasnip" },
			{ name = "buffer" }, { name = "path" }
		}
	})
	-- Set configuration for specific filetype.
	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "cmp_git" } -- You can specify the `cmp_git` source if you were installed it.
		}, { { name = "buffer" } })
	})

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { { name = "buffer" } }
	})

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(":", {
		mapping = {
			["Tab"] = function()
				if cmp.visible() then
					cmp.select_next_item()
				else
					vim.fn.feedkeys('<C-z>', 'nt')
				end
			end
		},
		sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } })
	})

	local configs = require("lspconfig.configs")
	local util = require("lspconfig.util")

	configs.phpls2 = {
		default_config = {
			cmd = { "PHPLS_ALLOW_XDEBUG=1", "php", "/home/nataneb/random/php-language-server/bin/php-language-server.php" },
			filetypes = { "php" },
			root_dir = function(fname)
				return util.root_pattern("composer.json", "vendor",
					".git")(fname) or
				    util.path.dirname(fname)
			end
		}
	}

	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	local lsp = require("lspconfig")

	lsp.intelephense.setup({ capabilities = capabilities })

	lsp.pyright.setup({ capabilities = capabilities })

	-- lsp.phpls2.setup({ capabilities = capabilities })

	lsp.prismals.setup({ capabilities = capabilities })

	lsp.tsserver.setup({ capabilities = capabilities })

	lsp.gopls.setup({ capabilities = capabilities })

	lsp.clangd.setup({ capabilities = capabilities })

	lsp.rust_analyzer.setup({ capabilities = capabilities })

	lsp.spectral.setup({ capabilities = capabilities })

	lsp.lua_ls.setup({ capabilities = capabilities })

	efm_config(lsp)
end

function efm_config(lsp)

	local eslint = {
		lintCommand = "eslint_d -f unix --stdin --stdin-filename=${INPUT}",
		lintIgnoreExitCode = true,
		lintStdin = true,
		lintFormats = { "%f:%l:%c: %m" },
		formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
		formatStdin = true
	}

	local prettier = {
		formatCommand = "prettier --stdin-filepath ${INPUT}",
		formatStdin = true
	}

	lsp.efm.setup({
		init_options = { documentFormatting = true },

		settings = {
			languages = {
				lua = { { formatCommand = "lua-format -i", formatStdin = true } },
				php = {
					{
						formatCommand = "php-cs-fixer fix --allow-risky=yes -",
						formatStdin = true
					}, {
						lintCommand = "php -l",
						lintStdin = true,
						lintFormats = { "%f:%l:%c: %m" },
						lintIgnoreExitCode = true
					},
					{
						lintCommand = "phpcs",
						lintStdin = true,
						lintFormats = { "%f:%l:%c: %m" }
					}
				},
				c = {
					{
						formatCommand = "clang-format ${INPUT}",
						formatStdin = true
					}
				},
				javascript = { eslint, prettier },
				javascriptreact = { eslint, prettier },
				typescript = { eslint, prettier },
				typescriptreact = { eslint, prettier },
			}
		}
	})
end

return function(use)
	use({
		"neovim/nvim-lspconfig",
		requires = {
			-- LSP Support
			{ "williamboman/mason.nvim" }, { "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, { "hrsh7th/cmp-buffer" }, { "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" }, { "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" }, -- Snippets
			{ "L3MON4D3/LuaSnip" }, { "rafamadriz/friendly-snippets" }
		},
		config = lsp_config
	})
end
