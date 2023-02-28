return require("packer").startup(function(use)
	use({
		"AlphaTechnolog/pywal.nvim",
		as = "pywal",
		config = function()
			require("pywal").setup()
		end,
	})

	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

	use("wbthomason/packer.nvim")

	use({ "nvim-telescope/telescope-ui-select.nvim" })

	use("github/copilot.vim")

	use("gpanders/editorconfig.nvim")

	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })

	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			local neogit = require("neogit")
			neogit.setup({})
		end,
	})

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		config = require("plugins/neotree").config,
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
					file_browser = {
						theme = "ivy",
						cwd_to_path = true,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								-- your custom normal mode mappings
							},
						},
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"ray-x/go.nvim",
		config = function()
			require("go").setup()
		end,
	})

	use({
		"smjonas/live-command.nvim",
		-- live-command supports semantic versioning via tags
		-- tag = "1.*",
		config = function()
			require("live-command").setup({
				commands = {
					Norm = { cmd = "norm" },
				},
			})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
			})
		end,
	})


	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			require("hop").setup({
				keys = "etovxqpdygfblzhckisuran",
			})
		end,
	})

	require("plugins/lsp")(use)
	require("plugins/dap")(use)

	require("plugins/chatgpt")(use)

	-- Tabs
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			-- Set barbar's options
			require("bufferline").setup({
				-- Enable/disable animations
				animation = true,

				-- Enable/disable auto-hiding the tab bar when there is a single buffer
				auto_hide = false,

				-- Enable/disable current/total tabpages indicator (top right corner)
				tabpages = true,

				-- Enable/disable close button
				closable = true,

				-- Enables/disable clickable tabs
				--  - left-click: go to buffer
				--  - middle-click: delete buffer
				clickable = true,

				-- Excludes buffers from the tabline
				exclude_ft = { "javascript" },
				exclude_name = { "package.json" },

				-- Enable/disable icons
				-- if set to 'numbers', will show buffer index in the tabline
				-- if set to 'both', will show buffer index and icons in the tabline
				icons = true,

				-- If set, the icon color will follow its corresponding buffer
				-- highlight group. By default, the Buffer*Icon group is linked to the
				-- Buffer* group (see Highlighting below). Otherwise, it will take its
				-- default value as defined by devicons.
				icon_custom_colors = false,

				-- Configure icons on the bufferline.
				icon_separator_active = "▎",
				icon_separator_inactive = "▎",
				icon_close_tab = "",
				icon_close_tab_modified = "●",
				icon_pinned = "車",

				-- If true, new buffers will be inserted at the start/end of the list.
				-- Default is to insert after current buffer.
				insert_at_end = false,
				insert_at_start = false,

				-- Sets the maximum padding width with which to surround each tab
				maximum_padding = 1,

				-- Sets the maximum buffer name length.
				maximum_length = 30,

				-- If set, the letters for each buffer in buffer-pick mode will be
				-- assigned based on their name. Otherwise or in case all letters are
				-- already assigned, the behavior is to assign letters in order of
				-- usability (see order below)
				semantic_letters = true,

				-- New buffer letters are assigned in this order. This order is
				-- optimal for the qwerty keyboard layout but might need adjustement
				-- for other layouts.
				letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

				-- Sets the name of unnamed buffers. By default format is "[Buffer X]"
				-- where X is the buffer number. But only a static string is accepted here.
				no_name_title = nil,
			})
		end,
	})

	-- Theme

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup()
		end,
	})

	use({
		"folke/which-key.nvim",
		config = function() end,
	})

	use({
		"smjonas/live-command.nvim",
		-- live-command supports semantic versioning via tags
		-- tag = "1.*",
		config = function()
			require("live-command").setup({
				commands = {
					Norm = { cmd = "Norm" },
					G = { cmd = "G" },
				},
			})
		end,
	})

	use "tpope/vim-fugitive"
end)
