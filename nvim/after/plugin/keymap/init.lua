local Remap = require("oanser.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

nnoremap("<leader>f", ":Goyo | set bg=dark | set linebreak<CR>")
nnoremap("<leader>o", ":setlocal spell! spelllang=en_us<CR>")
nnoremap("c", "\"_c")
-- xnoremap("<leader>p", "\"_dP")

vnoremap("Q", "gq")
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
vnoremap(".", ":normal .<CR>")

nnoremap("<leader>s", ":!clear && shellcheck -x %<CR>")
nnoremap("<leader>b", ":vsp<space>$BIB<CR>")
nnoremap("<leader>r", ":vsp<space>$REFER<CR>")
nnoremap("S", ":%s//g<Left><Left>")
nnoremap("<leader>c", ":w! | !compiler \"%:p\"<CR>")
nnoremap("<leader>p", ":!opout \"%:p\"<CR>")


nnoremap("<leader>v", ":VimwikiIndex<CR>")
nnoremap("<leader>n", ":NERDTreeToggle<CR>")
