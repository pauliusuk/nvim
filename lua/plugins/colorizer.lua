return {
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				filetypes = {
					"css",
					"javascript",
					"html",
					"json",
					"lua",
					"yaml",
					"toml",
					"conf",
				},
			})
		end,
		lazy = false,
		cmd = { "ColorizerToggle", "ColorizerAttachToBuffer", "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers" },
		opts = { user_default_options = { names = false } },
	},
}
