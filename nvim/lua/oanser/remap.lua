vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>o", ":setlocal spell! spelllang=en_us<CR>")
vim.keymap.set("n", "c", '"_c')
-- vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "Q", "gq")
vim.keymap.set("v", ".", ":normal .<CR>")

vim.keymap.set("n", "<leader>s", ":!clear && shellcheck -x %<CR>")
vim.keymap.set("n", "<leader>b", ":vsp<space>$BIB<CR>")
vim.keymap.set("n", "<leader>r", ":vsp<space>$REFER<CR>")
vim.keymap.set("n", "S", ":%s//g<Left><Left>")
vim.keymap.set("n", "<leader>c", ':w! | !compiler "%:p"<CR>')
vim.keymap.set("n", "<leader>p", ':!opout "%:p"<CR>')

vim.keymap.set("n", "<leader>v", ":VimwikiIndex<CR>")
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/oanser/plugins.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
