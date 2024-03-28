--ignore case-sensitive searches
vim.o.ignorecase = true

--explore windows size etc
vim.g.netrw_winsize = 25
vim.g.netrw_preview = 0

-- set numbers < on the left to appear etc
vim.opt.mouse = "a"
vim.opt.nu = true
vim.opt.relativenumber = true

--set indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

--set highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

--other useful set options
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.cursorline = true --enable highlight line

-- Highlight CursorLine with underline
vim.cmd('highlight CursorLine cterm=underline gui=underline')

--vim.opt.colorcolumn = "80" " show split in middle of screen for concentration

-- color highlight setting
--vim.cmd([[ highlight LineNr guifg=#e0af68 ]])
--vim.cmd([[ highlight LineNrAbove guifg=#787c99 ]])
--vim.cmd([[ highlight LineNrBelow guifg=#787c99 ]])

