return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"flake8",
				"shellcheck",
				"shfmt",
				"stylua",
			},
		},
	},

	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"mhartington/formatter.nvim",
	"mfussenegger/nvim-lint",

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		opts = {
			suggestion = { enabled = true },
			panel = { enabled = true },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
	},
}
