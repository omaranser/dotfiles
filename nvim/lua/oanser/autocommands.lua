local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})
local oanserGroup = augroup('oanser', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- Runs a script that cleans out tex build files whenever I close out of a .tex file.
vim.cmd("autocmd VimLeave *.tex !texclear %")

vim.cmd("autocmd bufenter * if (winnr(\"$\") == 1 && exists(\"b:NERDTree\") && b:NERDTree.isTabTree()) | q | endif")

--  Recompile dwmblocks on config edit.
vim.cmd("autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }")

-- Run xrdb whenever Xdefaults or Xresources are updated.
vim.cmd("autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults")
vim.cmd("autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %")
