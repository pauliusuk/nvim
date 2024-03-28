return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "dark", --dark is default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		})
	end,
}
