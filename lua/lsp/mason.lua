return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		priority = 1000,
		--note some of lsp installations on windows11 is done through Anaconda or (Miniconda3) prompt.
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"clangd",
					"pyright",
					"html",
					"cssls",
					"tailwindcss",
					"emmet_ls",
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		requires = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettierd",
					"black",
					"isort",
					"cspell",
					"stylua",
					"debugpy",
					"eslint_d",
				},
			})
		end,
	},
}
