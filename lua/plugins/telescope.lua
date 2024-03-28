return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
    "Paulobox/themes.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-h>"] = "which_key",
					},
				},
			},
		})

    --telescope extensions
		telescope.load_extension("fzf")
		telescope.load_extension("themes")

		-- telescope keybindings
		local builtin = require("telescope.builtin")
		vim.keymap.set(
			"n",
			"<leader>th",
			":Telescope themes<CR>",
			{ noremap = true, silent = true, desc = "Theme Switcher" }
		)
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "recent files" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "find Git files" })
		vim.keymap.set("n", "<leader>ft", builtin.live_grep, { desc = "find text,in cwd live grep" })
		vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "find string under cursor" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find buffers" })
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end,
}
