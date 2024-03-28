-- Set key mappings
vim.api.nvim_set_keymap("n", "<leader>ld", "<cmd>lua require('persistence').load()<cr>", { noremap = true, silent = true, desc = "Last session for current Directory" })
vim.api.nvim_set_keymap("n", "<leader>ls", "<cmd>lua require('persistence').load({ last = true })<cr>", { noremap = true, silent = true, desc = "Last Session" })
vim.api.nvim_set_keymap("n", "<leader>lq", "<cmd>lua require('persistence').stop()<cr>", { noremap = true, silent = true, desc = "session won't be saved on exit" })

return {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
        dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
        options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
        pre_save = nil, -- a function to call before saving the session
        save_empty = false, -- don't save if there are no open file buffers
    },
}

