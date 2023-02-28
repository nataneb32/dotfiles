require("plugins")

vim.g.mapleader = " "

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set number")
vim.cmd("set rnu")

vim.cmd([[
autocmd BufRead,BufEnter *.astro set filetype=astro
]])

vim.api.nvim_set_keymap("n", "<space>fr", ":Telescope file_browser<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>fe", ":Telescope file_browser path=%:p:h<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>gc", ":Neogit commit<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>gs", ":Telescope git_status<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>gs", ":Telescope git_status<CR>", { noremap = true })

local wk = require("which-key")

wk.register({
	e = { "<cmd>Neotree<cr>", "Open FileTree" },
	l = {
		name = "LSP",
		f = {
			function()
				vim.lsp.buf.format({
					filter = function(client)
						return client.name ~= "tsserver"
					end,
				})
			end,
			"Format buffer",
		},
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Actions" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
	},
}, { prefix = "<leader>" })

wk.register({
	K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
}, { mode = "n" })

wk.register({
	d = { "<cmd>Telescope lsp_definitions<cr>", "Definition" },
	r = { "<cmd>Telescope lsp_references<cr>", "References" },
	s = { "<cmd>Telescope lsp_document_symbols<cr>", "Symbols" },
	i = { "<cmd>Telescope lsp_implementations<cr>", "Implementations" },
	t = { "<cmd>Telescope lsp_type_definitions<cr>", "Type Definitions" },
}, { prefix = "g" })

wk.setup({})
