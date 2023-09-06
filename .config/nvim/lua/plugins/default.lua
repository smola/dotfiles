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
}
