if os.getenv("GITHUB_COPILOT_ALLOWED") == "true" then
	return {
		import = "lazyvim.plugins.extras.coding.copilot",
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
end
return {}
