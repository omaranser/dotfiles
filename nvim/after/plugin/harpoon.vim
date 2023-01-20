nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>

nnoremap <silent><C-s> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><C-d> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><C-f> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><C-g> :lua require("harpoon.ui").nav_file(4)<CR>
