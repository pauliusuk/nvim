-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Cs = "\e[4:0m"]])

--make selected line number on the left in orange color
vim.cmd([[
augroup CustomLineNumber
autocmd!
autocmd CursorMoved * highlight CursorLineNr guifg=#e0af68
augroup END
]])

-- copy file's path
vim.cmd([[
    command! CPurl lua vim.fn.setreg('+', vim.fn.expand('%:p')) vim.api.nvim_out_write("Copied file path to clipboard\n")
    nnoremap <Leader>cpurl :CPurl<CR>
]])

-- Run xrdb whenever Xdefaults or Xresources are updated.
vim.cmd[[
  autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
  autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
]]
