-- vim: sw=2:ts=2:sts=2:et
-- luacheck: globals vim

require("config.lazy")

require("lazy").setup({
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"mhartington/formatter.nvim",
	"mfussenegger/nvim-lint",
	"github/copilot.vim",
	-- colorscheme
	"navarasu/onedark.nvim",
})

-- Color scheme
require("onedark").setup({
	style = "darker",
})
require("onedark").load()

-- LSP and formatters
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lspconfig.rust_analyzer.setup({})

-- Formatters
require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		sh = {
			require("formatter.filetypes.sh").shfmt,
		},
	},
})

-- Linters
require("lint").linters_by_ft = {
	sh = { "shellcheck" },
	lua = { "luacheck" },
}

-- Automatically trigger linters on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})

-- Keybindings
-- TODO
