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
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_by_name = {
						-- '.git',
						-- '.DS_Store',
						-- 'thumbs.db',
					},
					never_show = {},
				},
			},
		},
	},
}
